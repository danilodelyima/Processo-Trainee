var palavra
var form = document.getElementById('formulario');
var campo = document.getElementById('campo');

function palindromo(string){
	var tam = string.length;
	var diferentes = 0;

	for(i=0;i<(tam-1)/2;i++){
		if(string[i] != string[tam -1 - i]){
			diferentes++;
		}
	}
	if(diferentes == 0){
		alert("palíndromo");
	}
	else{
		alert("Não é palíndromo");
	}
}

form.addEventListener('submit', function(e){
    //console.log(campo.value);
    palavra  = campo.value
    palindromo(palavra)
    // impede o envio do form
    e.preventDefault();
});



	