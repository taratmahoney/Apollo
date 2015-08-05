$(document).on('ready page:load', function() {
  $('.searcher').on('click', function(e) {
    e.preventDefault();
    e.stopPropagation();
    $(this).add('.search').toggleClass('is-clicked');
    $(".navbar-right").toggle();
    console.log("Done")
  });
});