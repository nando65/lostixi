function ready_zendaway(){

             $(".js-example-basic-single").select2();
          }
        $(document).ready(ready_zendaway);
        $(document).on('page:load', ready_zendaway);