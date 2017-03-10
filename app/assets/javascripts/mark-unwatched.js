$(document).ready(function(){
  $('#movie-table-body').on('click', 'button.mark-unwatched', function(e){
    e.preventDefault();
    var movieId = $(this).parents('tr').attr('id')

    $.ajax({
      url: '/api/v1/movies/' + movieId,
      method: 'Patch',
      data: {watched: false}
    }).then(markUnwatched)
  })

  function markUnwatched(movie) {
    $('#movie-table-body #' + movie.id +'').removeData();
    $('#movie-table-body #' + movie.id + ' .status').html(
      "False"
    );
    $('#movie-table-body #' + movie.id + '').css('background', 'white');
    $('#movie-table-body #' + movie.id + ' .mark-watched').html(
      '<button type=button class="mark-watched">Mark as Watched</button>'
    );
  }
})
