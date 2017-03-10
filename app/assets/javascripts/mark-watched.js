$(document).ready(function(){
  $('#movie-table-body').on('click', 'button.mark-watched', function(e){
    e.preventDefault();
    var movieId = $(this).parents('tr').attr('id')

    $.ajax({
      url: '/api/v1/movies/' + movieId,
      method: 'Patch',
      data: {watched: true}
    }).then(markWatched)
  })

  function markWatched(movie) {
    $('#movie-table-body #' + movie.id +'').removeData();
    $('#movie-table-body #' + movie.id + ' .status').html(
      "<td>True</td>"
    );
    $('#movie-table-body #' + movie.id + '').css('background', 'grey');
    $('#movie-table-body #' + movie.id + ' .mark-watched').html(
      '<button type=button class="mark-unwatched">Mark as Unwatched</button>'
    );
  }
})
