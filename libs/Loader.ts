export function loadGLTF(
  uri: string,
  resPath: string = dirname(uri),
): Promise<GLTF> {
  console.log(resPath);
  return fetch(uri)
    .then(i => i.json())
    .then(gltf => {
      // 加载依赖资源
      const imgs = gltf.images.map(img =>
        loadImg(resPath + '/' + img.uri).then($img => (img.el = $img)),
      );
      const buffers = gltf.buffers.map(buffer =>
        fetch(resPath + '/' + buffer.uri)
          .then(i => i.arrayBuffer())
          .then(arrayBuffer => {
            if (buffer.byteLength !== arrayBuffer.byteLength)
              throw new Error('byteLength unmatch');
            buffer.data = arrayBuffer;
          }),
      );
      return Promise.all([...imgs, ...buffers]).then(() => gltf as GLTF);
    });
}

function loadImg(uri) {
  return new Promise((resolve, reject) => {
    const $img = document.createElement('img');
    $img.onload = () => resolve($img);
    $img.onerror = e => reject(e);
    $img.src = uri;
  });
}

function dirname(uri: string) {
  const parts = uri.replace('//', '/').split('/');

  if (parts.indexOf('.') > -1) {
    return parts.slice(0, -1).join('/');
  }

  return parts.join('/');
}
