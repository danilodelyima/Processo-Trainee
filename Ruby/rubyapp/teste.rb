class Livro
   attr_reader :codigo
   def initialize(codigo,autor,nome)
     @codigo = codigo
     @autor = autor
     @nome = nome
   end
end

class Biblioteca < Livro
   def initialize()
     @biblioteca = []
   end
   
   def adicionar(a)
     @biblioteca.push({a.codigo => a})
   end
   
   def remover(a)
     @biblioteca.delete({a.codigo => a})
   end
   
end
b = Biblioteca.new
a = Livro.new(1, "nois", "Eh nois")
puts b.inspect
puts a.inspect
b.adicionar(a)
puts b.inspect
b.remover(a)
puts b.inspect