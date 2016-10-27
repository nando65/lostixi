function ready_ranking(){

            $('#star').raty({
    readOnly: true,
    score: <%= @rating_average %>,
    path: '/assets'
  });

  $('#user_star').raty({
    // score: <%= @rating1.score %>,
    score: <%= 0 %>,
    path: '/assets',
    click: function(score, evt) {
      $.ajax({
        // url: '/ratings/' + <%= @rating1.id %>,
        url: '/ratings/' + <%= 0 %>,
        type: 'PATCH',
        data: { score: score }
      });
    }
  });
          }
        $(document).ready(ready_ranking);
        $(document).on('page:load', ready_ranking);