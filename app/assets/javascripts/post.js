var ready;
ready = function() {

  $('.red').on('click', function(e) {
    e.preventDefault();
    e.stopPropagation();
    $(this).add('.feedback').toggleClass('clicked');
    console.log("Done")
    });
    $('.yellow').on('click', function(e) {
    e.preventDefault();
    e.stopPropagation();
    $(this).add('.crowdfunding').toggleClass('clicked');
    console.log("Done")
    });
    $('.blue').on('click', function(e) {
    e.preventDefault();
    e.stopPropagation();
    $(this).add('.idea').toggleClass('clicked');
    console.log("Done")
  });
};

$(document).ready(ready);
$(document).on('page:load', ready);
