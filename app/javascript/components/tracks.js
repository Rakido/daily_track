function playVideo() {
  $(document).ready(function() {
    $("#player").hide();
    $('#play-video').on('click', function(ev) {
      console.log($("#video")[0]);
      $("#video")[0].src += "&autoplay=1";
      ev.preventDefault();
      $("#player").show();
      $("#player-title").append( "<p>Test</p>" )
    });
  });
}

export { playVideo };