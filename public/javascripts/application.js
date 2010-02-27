// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
$(function(){
  $(".datepicker").html('');
  $(".datepicker").datepicker({ minDate: new Date(), onSelect: function(inst){
    inst = inst.split('/')
    $("#reminder_send_at_1i").val(inst[2]);
    $("#reminder_send_at_2i").val(inst[0]);
    $("#reminder_send_at_3i").val(inst[1]);
  }, defaultDate: new Date($("#reminder_send_at_1i").val(),$("#reminder_send_at_2i").val() - 1,$("#reminder_send_at_3i").val())
  });
})

// 
// defaultDate: $("#reminder_send_at_2i").val() + '/' + $("#reminder_send_at_3i").val() + "/" + $("#reminder_send_at_1i").val(), 
// formatDate: "m/d/yy"