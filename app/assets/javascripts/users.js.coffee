$ ->
  $('.profile-field').hide()

  $('input[name="user[profile]"]').on "change", ->
    choosenType = $(@).val()

    $('.profile-field').show()

    if choosenType == 'solo'
      $('.profile-field').hasClass('company').hide();
      $('.profile-field').hasClass('solo').show();
    else
      $('.profile-field').hasClass('company').show();
      $('.profile-field').hasClass('solo').hide();