var button = document.getElementById('button');
var word = document.getElementById('word');

function vogais(word){
	var contador = 0

	for(i=0; i < word.length; i++){
		if (word[i] == 'a' || word[i] == 'e' || word[i] == 'i' || word[i] == 'o' || word[i] == 'u')
			contador++;
	}
	return contador
}
button.addEventListener('click', function(){
	word = word.value
	word = word.split("");
	document.write("Quantidade de vogais = " + vogais(word));
});