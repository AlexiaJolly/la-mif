import ClipboardJS from 'clipboard';

const initClipboard = () => {
  const clipboard = new ClipboardJS('.btn-clipboard');
  clipboard.on('success', function(e) {
    $('.btn-clipboard').tooltip('show');
    setTimeout(() => {
      $('.btn-clipboard').tooltip('hide');
    }, 500)
  });
}

export { initClipboard };
