$(document).ready(function() {
  // See: http://docs.jquery.com/Tutorials:Introducing_$(document).ready()
  $("form.search").on("submit", function () {
    event.preventDefault();
    var $form = $(this)
    var urlRoute = $form.attr("action")
    var query = $form.serialize()

    var request = $.ajax({
      url: urlRoute + "?" + query
    })
    .done(function(beerList) {
      $("#doggie-photo").hide();
      $("div.beer-list").empty();
      $("div.beer-list").append(beerList);
    })
  });

  $(".beer-list").on("click", "a", function() {
    event.preventDefault();
    var $link = $(this)
    var urlRoute = $link.attr("href")

    var request = $.ajax({
      url: urlRoute
    });
    request.done(function(showStyle) {
      $("div.style-list").empty();
      $("div.style-list").append(showStyle);
    })
  });
});
