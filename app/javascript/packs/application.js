import "bootstrap";
import "../plugins/flatpickr";

import $ from 'jquery';
import 'select2';
import { initClipboard } from '../plugins/clipboard';

const initSelector = () => {
  $(document).ready(function() {
      $('.js-example-basic-multiple').select2({
        tags: true,
        placeholder: 'Emails'
      });
  });
}

initSelector();
initClipboard();

