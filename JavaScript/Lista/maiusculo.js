var button = document.getElementById('button');
var text = document.getElementById('word');

function titleize(text) {
		/*Tranforma todo o texto em minúsculo e armazena em loweredText*/
    var loweredText = text.toLowerCase();
    /*Corta a frase em palavras em armazena em words*/
    var words = loweredText.split(" ");
    /*Armazena toda as palavras em w, palavra por palavra,
    	Armazena a primeira letra, w[0], em firstLetter
    	Daí, w(palavra) = upper na primeira letra + (substring da palavra - a primeira letra);
    	retorna tudo para a palavra (words[a])
    	Ao final junta tudo colocando o espaço que o split tirou;
     */
    for (var a = 0; a < words.length; a++) {
        var w = words[a];
        var firstLetter = w[0];
        w = firstLetter.toUpperCase() + w.slice(1);

        words[a] = w;
    }
    return words.join(" ");
}

button.addEventListener('click', function(){
	text = text.value;
	text = titleize(text);

	document.write(text);
});
