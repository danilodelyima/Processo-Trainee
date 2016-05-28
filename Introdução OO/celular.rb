class Conta
#Atributos
@nome = "Seu Zé"
@saldo = 100

#Métodos
	def saque (retirar)
		saldo = saldo - retirar
		
	end

	def saque (acrescentar)
		saldo = saldo + acrescentar
		
	end

	def resgatar_saldo
		puts (saldo)
	end 

end 