// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require 'icheck'
//= require bootstrap-sprockets
//= require bootstrap
//= require_tree .

//icheck initialize code
function icheck(){
  if($(".icheck-me").length > 0){
    $(".icheck-me").each(function(){
      /*const checkId = $(".icheck-me").attr('#id');*/
      var $el = $(this);
      var skin = ($el.attr('skin') !== undefined) ? "_" + $el.attr('skin') : "",
      color = ($el.attr('data-color') !== undefined) ? "-" + $el.attr('data-color') : "";
      var opt = {
      	checkboxClass: 'icheckbox' + skin + color,
      	inheritID: true,
      }
      $el.iCheck(opt);
    });
  }
}
$(function(){
  icheck();
})

//strikethrough code  	
$(document).ready(function() {
  $.each($('[todo_task_id]'), function() {
    const $id = $(this).attr('todo_task_id')
    const $checked = $(this).find(':checkbox').attr('checked')
    if ($checked == 'checked') {
      $('#pId'+ $id).css("text-decoration", "line-through")}
})});

//select2 code
$(document).ready(function() {
    $('#sel2').select2({width: '100%'});
    placeholder: "Select category"
    disabled: true
});

//popup
$(document).ready(function() {
	//open
	$('[data-popup-open]').on('click', function(e) {
		var targeted_popup_class = jQuery(this).attr('data-popup-open');
		$('[data-popup="' + targeted_popup_class + '"]').fadeIn(350);

		e.preventDefault();
	});

	//close
	$('[data-popup-close]').on('click', function(e) {
		var targeted_popup_class = jQuery(this).attr('data-popup-close');
		$('[data-popup="' + targeted_popup_class + '"]').fadeOut(350);

		e.preventDefault();
	});
	//close by ESC
	$(document).ready(function(e) {
		var targeted_popup_class = jQuery(this).attr('data-popup-close');
		if (e.keyCode == 27) {
		  $('[data-popup="' + targeted_popup_class + '"]').fadeOut(350);
		}
	});
});

//submit link
function eventSubmit(event) {
	event.preventDefault();
    document.getElementById("form_data_field").submit();
	return false
}

//submit checkbox
$(document).ready(function() {
	$('.icheck-me').on('ifClicked', function(){
		this.form.submit()
	});
})