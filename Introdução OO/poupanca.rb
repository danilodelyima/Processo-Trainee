class Conta_poupanca < Conta

	def initialize
		@saldo = 1000 
	end

	def prever_redumento_mensal(meses)
		@saldo = @saldo * 0.02 * meses
	end 

end