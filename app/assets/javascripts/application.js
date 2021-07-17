//= require jquery
//= require jquery.turbolinks
//= require jquery_ujs
//= require bootstrap/dropdown
//= require turbolinks

//= require_tree .


//= require bootstrap

$(document).ready(function(){
  $('#sort_by').change(function(){
    sort_by =  $(this)
    $.ajax({
      url: "/?sort_by="+$(this).val(),
    }).done(function(data) {
      sort_by
      // sort_by.parent().parent().find('.coupon_list').parent().find('select').html('')
      // sort_by.parent().parent().find('.coupon_list').parent().find('select').append('<option></option>')
      // $.each(data, function(){
      //   sort_by.parent().parent().find('.coupon_list').parent().find('select').append('<option value="'+ (this.id) +'">'+ this.name +'</option>')
      // })
    });
  })
})

