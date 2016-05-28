include Math

salario = gets.to_f

if salario <= 400.00
	salario += (salario * 0.15)
	reajuste = (salario * 0.15)
	percentual = 15


elsif salario > 400.00 and salario <= 800.00
	salario += (salario * 0.12)
	reajuste = (salario * 0.12)
	percentual = 12


elsif salario > 800.00 and salario <= 1200.00
	salario += (salario * 0.10)
	reajuste = (salario * 0.10)
	percentual = 10


elsif salario > 1200.00 and salario <= 2000.00
	salario += (salario * 0.07)
	reajuste = (salario * 0.07)
	percentual = 7

else
	salario += (salario * 0.04)
	reajuste = (salario * 0.04)
	percentual = 4

end
	
	puts "Novo salario: #{salario}"
	puts "Rajuste ganho: #{reajuste}"
	puts "Em percentual: #{percentual} %"

	5.t