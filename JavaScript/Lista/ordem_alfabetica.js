var button = document.getElementById('button');
var word = document.getElementById('word');


function ordem(word){
	word = word.split("");
	word = word.sort(word);
	return word;
}

button.addEventListener('click', function(){
	word = word.value;	
	document.write(ordem(word));
});