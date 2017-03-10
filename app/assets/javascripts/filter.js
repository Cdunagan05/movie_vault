$(document).ready(function(){
  $("#filter-input").on("keyup", function(){
    var input = document.getElementById("filter-input")
    var filter = input.value.toUpperCase()
    var table = document.getElementById("movie-table-body")
    var tr = table.getElementsByTagName("tr")

    for (var i = 0; i < tr.length; i++) {
      var td = tr[i].getElementsByTagName("td")[0];
      if (td) {
        if (td.innerHTML.toUpperCase().indexOf(filter) > -1) {
          tr[i].style.display = "";
        } else {
          tr[i].style.display = "none";
        }
      }
    }
  })

  $("#filter-by-watched").on("click", function(){
    var filter = 'true'
    var table = document.getElementById("movie-table-body")
    var tr = table.getElementsByTagName("tr")

    for (var i = 0; i < tr.length; i++) {
      var td = tr[i].getElementsByTagName("td")[2];
      if (td) {
        if (td.innerHTML.indexOf(filter) > -1) {
          tr[i].style.display = "";
        } else {
          tr[i].style.display = "none";
        }
      }
    }
  })

  $("#filter-by-unwatched").on("click", function(){
    var filter = 'false'
    var table = document.getElementById("movie-table-body")
    var tr = table.getElementsByTagName("tr")

    for (var i = 0; i < tr.length; i++) {
      var td = tr[i].getElementsByTagName("td")[2];
      if (td) {
        if (td.innerHTML.indexOf(filter) > -1) {
          tr[i].style.display = "";
        } else {
          tr[i].style.display = "none";
        }
      }
    }
  })
})
