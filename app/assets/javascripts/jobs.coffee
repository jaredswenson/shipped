# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on 'turbolinks:load', ->
	$('.jobbutton').on 'click', (e) ->
		$('#job_id').val($(this).prev("input").val())
		window.add_boats_btn = $(e.target).closest('.jobinfo')
		$('#myModal').modal()

	$('#boatform').on "ajax:success", (e) ->
		console.log("ajfdlas")
	.on "ajax:error", (e, data, status, xhr) ->
		console.log(data)

	$('#addingboats').on 'click', ->
		$('#myModal').modal('hide')



