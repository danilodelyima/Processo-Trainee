hash = {}
codigo = 1

hash[codigo] = {autor: "Danilo", livro:"Livro 01"}
hash[2] = {autor: "Danilo2", livro:"Livro 02"}

puts hash

hash.delete(1)

puts hash