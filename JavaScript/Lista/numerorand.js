var num
var form = document.getElementById('formulario');
var campo = document.getElementById('campo');
var randNum = Math.floor(Math.random() * 10 + 1);
console.log(randNum);

function verificacao(num){
	var x = parseInt(num);
	if(randNum == num){
		alert("Bom Trabalho!");
	}
	else{
		alert("Tente novemente.");
	}
}
 

form.addEventListener('submit', function(e){
    //console.log(campo.value);
    num  = campo.value
    verificacao(num)
    // impede o envio do form
    e.preventDefault();
});