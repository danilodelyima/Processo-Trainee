$("select").change(function(){
	document.write($("select option:selected").text());
});