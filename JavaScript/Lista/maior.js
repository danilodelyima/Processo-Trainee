var button = document.getElementById('button');
var num1= document.getElementById('num1');
var num2= document.getElementById('num2');

function maior(num1, num2){
	if(num1 > num2)

		return num1
	else
		return num2
}

button.addEventListener('click', function(){
	var retorno;
	retorno = maior(num1.value, num2.value)
	document.write("Maior = "+ retorno);
});