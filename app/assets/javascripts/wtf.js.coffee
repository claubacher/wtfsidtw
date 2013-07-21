$ ->
	$('#wtf').on 'submit', '.wtf_form', (e) ->
		e.preventDefault()
		$.post $(this).attr('action'), $(this).serialize(), (data) ->
			$('#wtf').html(data)

  $('#wtf').on 'click', '.wtf_link', (e) ->
    e.preventDefault()
    $.ajax
      type: 'POST'
      url: $(this).attr('href')
      beforeSend: ->
        $('#wtf').fadeTo(0.5)
      success: (data) ->
        $('#wtf').fadeTo(1)
        $('#wtf').html(data)
