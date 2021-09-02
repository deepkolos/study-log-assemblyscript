// vite.config.js
const { resolve } = require('path');
const { defineConfig } = require('vite');

module.exports = defineConfig({
  build: {
    rollupOptions: {
      input: {
        index: resolve(__dirname, 'index.html'),
        gltfRenderer: resolve(__dirname, 'glTFRenderer.html'),
      },
    },
  },
});
