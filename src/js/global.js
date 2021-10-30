
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
  return `${ye}-${mo}-${da}`;
}

function global_GetFormattedDate(aDate) {
  let ye = new Intl.DateTimeFormat('en', { year: 'numeric' }).format(aDate);
  let mo = new Intl.DateTimeFormat('en', { month: '2-digit' }).format(aDate);
  let da = new Intl.DateTimeFormat('en', { day: '2-digit' }).format(aDate);
  return `${ye}-${mo}-${da}`;
}

var global_PaymentMethodMap = new Map();
function global_ReloadPaymentMethodList(results) {
  $.each(results, function(index, object) {
    global_PaymentMethodMap.set(object.paymentMethodID, object.paymentMethodName);
  });

  home_ReloadPaymentMethodSelection(global_PaymentMethodMap);
  process_ReloadPaymentMethodSelection();
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
var dropdownMenuDelay = 200;
$('.dropdown-menu').on("mouseout", function() {
  dropdownMenuTimer = setTimeout(function() {
    $('.dropdown-menu.open').toggle();
    $('.dropdown-menu').children('.inner').children('.dropdown-menu').toggle();
  }, dropdownMenuDelay);
});
$('.dropdown-menu').on("mouseover", function() { 
  clearTimeout(dropdownMenuTimer);
});