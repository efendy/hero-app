console.log('init.js is LOADED');


/* --- UI Handling START ---- */

var btnInitContinue = $('#btn-init-continue');

// INITIALIZE
$('.section-header').hide();
$('.section-main').hide();

// EVENTS
btnInitContinue.on('click', function() {
  database_Init();
  view_process_Init();
  view_settings_Init();
  $('.section-header').show();
  $('.section-main').show();
  $('#preload').hide();
})

/* --- UI Handling END ------ */