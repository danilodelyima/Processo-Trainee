class Conta
attr_accessor :saldo

#Atributos
@nome = "Seu Zé"
@saldo

#Métodos
	def initialize
		@saldo = 1000
	end

	def saque(retirar)
		@saldo -= retirar
		return @saldo
	end

	def deposito(acrescentar)
		@saldo += acrescentar
		return @saldo		
	end

	def resgatar_saldo
		puts @saldo
	end 
end 