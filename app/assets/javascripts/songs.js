function createSong(name) {


  var newSong = { name: name };

  $.ajax({
    type: "POST",
    url: "/artists.json",
    data: JSON.stringify({
        todo: newSong
    }),
    contentType: "application/json",
    dataType: "json"
  });
}

function submitSong(event) {
  event.preventDefault();
  createSong($("#song_name").val());
  $("#song_title").val(null);

}

function deleteSong(songId) {
  $.ajax({
    type: "DELETE",
    url: "/artists/" + songId + ".json",
    contentType: "application/json",
    dataType: "json"})

    .done(function(data) {
      $('tr[data-id="'+songId+'"]').remove();
    }
}

$(document).ready(function() {

}
