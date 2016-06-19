var form = document.getElementById('formulario');
var num1 = document.getElementById('num1');
var num2 = document.getElementById('num2');
 
function mult(num1, num2){
	document.getElementById('mult').innerHTML = num1 * num2;
}
function div(num1, num2){
	document.getElementById('div').innerHTML = num1 / num2;
}

form.addEventListener('submit', function(e){

		num1 = parseInt(num1.value);
		num2 = parseInt(num2.value);
    mult(num1 , num2)
    div(num1, num2)
    // impede o envio do form
    e.preventDefault();
    
});





