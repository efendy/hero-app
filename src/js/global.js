
var loading = {
  show: function() {
    document.getElementById("overlay-block").style.display = "block";
  },
  hide: function() {
    document.getElementById("overlay-block").style.display = "none";
  }
}

function reloadPaymentMethodList(results) {
  let paymentMethodMap = new Map();
  $.each(results, function(index, object) {
    paymentMethodMap.set(object.paymentMethodID,object.paymentMethodName);
  });

  home_ReloadPaymentMethodSelection(paymentMethodMap);
  process_ReloadPaymentMethodSelection(paymentMethodMap);
}


// HACK UIUX home dropdown multiselect
$('#dropdown-home-payment-method').selectpicker();
$('.dropdown').on("click", function() { 
  if ($(this).children('#dropdown-home-payment-method')) {
    $(this).children('.dropdown-menu').toggle();
    $(this).children('.dropdown-menu').children('.inner').children('.dropdown-menu').toggle();
  }
});


function footerMessage(message) {
  $("#footer-message").text = message;
}