
var loading = {
  show: function() {
    document.getElementById("overlay-block").style.display = "block";
  },
  hide: function() {
    document.getElementById("overlay-block").style.display = "none";
  }
}

function global_GetTodayDate() {
  var today = new Date();
  let ye = new Intl.DateTimeFormat('en', { year: 'numeric' }).format(today);
  let mo = new Intl.DateTimeFormat('en', { month: '2-digit' }).format(today);
  let da = new Intl.DateTimeFormat('en', { day: '2-digit' }).format(today);
  console.log(`${ye}-${mo}-${da}`);
  return `${ye}-${mo}-${da}`;
}

function global_ReloadPaymentMethodList(results) {
  let paymentMethodMap = new Map();
  $.each(results, function(index, object) {
    paymentMethodMap.set(object.paymentMethodID,object.paymentMethodName);
  });

  home_ReloadPaymentMethodSelection(paymentMethodMap);
  process_ReloadPaymentMethodSelection(paymentMethodMap);
}

function global_FooterMessage(message) {
  $("#footer-message").text(message);
}

// HACK UIUX home dropdown multiselect
$('#dropdown-home-payment-method').selectpicker();
$('.dropdown').on("click", function() { 
  if ($(this).children('#dropdown-home-payment-method')) {
    $(this).children('.dropdown-menu').toggle();
    $(this).children('.dropdown-menu').children('.inner').children('.dropdown-menu').toggle();
  }
});
var dropdownMenuTimer;
var dropdownMenuDelay = 1000;
$('.dropdown-menu').on("mouseout", function() {
  dropdownMenuTimer = setTimeout(function() {
    $('.dropdown-menu.open').toggle();
    $('.dropdown-menu').children('.inner').children('.dropdown-menu').toggle();
  }, dropdownMenuDelay);
});
$('.dropdown-menu').on("mouseover", function() { 
  clearTimeout(dropdownMenuTimer);
});