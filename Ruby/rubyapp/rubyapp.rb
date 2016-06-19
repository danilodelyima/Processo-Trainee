class Livro
  attr_reader :codigo, :autor, :nome
  def initialize(codigo,autor,nome)
    @codigo = codigo
    @autor = autor
    @nome = nome
  end
end

class Biblioteca < Livro
  attr_reader :livros

  def initialize
    @livros = {}
  end
 
  def adicionar(codigo, autor, nome)
    livro = Livro.new(codigo, autor, nome)
    @livros[livro.codigo] = {autor: livro.autor, nome:livro.nome} 
  end
   
  def remover(codigo)
    @livros.delete(codigo) { |el| puts "Código #{el} não encontrado" }
  end

  def exibir(biblioteca)
    (0..livros.length).each do |i|
      puts "#{livros[i]}"
    end
  end
end

class Menu < Biblioteca

  biblioteca = Biblioteca.new
  puts "Bem vindo a Biblioteca CJR"
    begin
      puts "O que deseja fazer?"
      puts "1 - Criar novo livro"
      puts "2 - Exibir a Biblioteca"
      puts "3 - Exibir tamanho da biblioteca"
      puts "4 - Exlcuir livro"
      puts "5 - Sair"
      print "Digite sua opção: "
      opcao = gets.to_i
      system "clear"
      case opcao
        when 1
          print "Digite o código do livro: "
          @codigo = gets.to_i
          print "Digite o Autor do livro: "
          @autor = gets.chomp
          print "Digite o nome do livro: "
          @nome = gets.chomp

          if biblioteca.livros.has_key?(@codigo)
            puts "Não é possível atribuir o mesmo código para dois livros"
          else
            biblioteca.adicionar(@codigo, @autor, @nome)
          end
        when 2
          if biblioteca.livros.size == 0
            puts "Biblioteca vazia"
          else
            biblioteca.exibir(biblioteca.livros)
          end
        when 3
          puts "Quantidade de Livros = #{(biblioteca.livros.size)}"
        when 4
          puts "Digite o código do livro"
          @codigo = gets.to_i
          biblioteca.remover(@codigo)         
        when 5
          puts "Saindo..."
        else
          puts "Opção inválida"
      end
      puts ""
    end while(opcao != 5)
end

