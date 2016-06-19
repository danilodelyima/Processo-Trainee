var button = document.getElementById('button');
var num1= document.getElementById('num1');
var num2= document.getElementById('num2');
var num3= document.getElementById('num3');

button.addEventListener('click', function(){
	array = new Array(num1.value, num2.value, num3.value);
	array.sort();
	alert(array);
});