export function glsl(i: TemplateStringsArray) {
  return i[0]; // 编辑器提示用
}

export function addLineNumber(string: string): string {
  return string
    .split('\n')
    .map((v, k) => `${k + 1}: ${v}`)
    .join('\n');
}
