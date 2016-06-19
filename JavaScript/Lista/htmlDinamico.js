$(document).ready(function(){
	var texto = $("#texto");

	$("button").click(function(){
		$("body").append(texto.val());
	});

});