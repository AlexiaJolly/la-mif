import "bootstrap";
import "../plugins/flatpickr";

import $ from 'jquery';
import 'select2';

const initSelector = () => {
  $(document).ready(function() {
      $('.js-example-basic-multiple').select2({
        tags: true
      });
  });
}

initSelector();
