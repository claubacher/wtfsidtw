$ ->
	$('#wtf').on 'submit', '.wtf_form', (e) ->
		e.preventDefault()
		$.post $(this).attr('action'), $(this).serialize(), (data) ->
			$('#wtf').html(data)
