# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$ ()->

	$('.saiken_show').tooltip
		placement: "top"
		title: "詳細を見る"
		container: "body"

	$('.saiken_edit').tooltip
		placement: "top"
		title: "編集しますよ"
		container: "body"

	$('.saiken_destroy').tooltip
		placement: "top"
		title: "消えますよ？"
		container: "body"




