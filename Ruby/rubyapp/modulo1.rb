livro = ["livro1", "livro2", "livro3", "livro4"]
remover = 0
nome = "livro1"


(0..livro.length).each do |i|
	if livro[i] == nome
		remover = i
		livro.delete_at(remover)
		livro.compact 
	end
end

(0..livro.length).each do |i|
		puts livro[i] 
	end

	puts remover

