// $(function() {
//
//   var $td = $("td");
//
//   $td.on({
//     "dblclick" : function() {
//       $td.not(this).prop("contenteditable", false);
//       $(this).prop("contenteditable", true);
//     },
//     "blur" : function() {
//       var newText = this.textContent
//       var storage = JSON.parse(localStorage["movie-table-body"]);
//       var tagToEdit = storage[this.id]
//       if(this.classList[0] === "tags") {
//         tagToEdit["tag"] = newText;
//       }
//       var newStorage = JSON.stringify(storage)
//       localStorage.setItem("movie-table-body", newStorage)
//     }
//   });
//
// });
