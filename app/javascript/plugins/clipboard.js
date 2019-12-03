import ClipboardJS from 'clipboard';

const initClipboard = () => {
  new ClipboardJS('.btn-clipboard');
}

export { initClipboard };
