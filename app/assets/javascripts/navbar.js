function navReveal() {
  $("#navbar-container").css("top","0");
}
function navHide() {
  if ($(this).scrollTop() > 120) {
    $("#navbar-container").css("top","-80px");
  }
}

function navRevealMobile() {
  console.log("hello");
  $("#navbar-menu").css("right","0");
  $("#navbar-outside").css("left","0");
}
function navHideMobile() {
  console.log("hello");
  $("#navbar-menu").css("right","-200px");
  $("#navbar-outside").css("left","-100%");
}

$(window).scroll(function() {
  if ($(this).scrollTop() > 120) {
    $("#navbar-container").css("top","-80px");
  } else {
    $("#navbar-container").css("top","0");
  }
});
