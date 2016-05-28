include Math

a ,b ,c = gets.split(' ').map{ |x| x.to_f}


delta = (b**2) -4*a*c

if delta < 0
	puts "Impossivel calcular"

else
	x1 = ((-b) + Math.sqrt(delta))/(2*a)
	x2 = ((-b) - Math.sqrt(delta))/(2*a)

	puts "R1 = #{x1.round(5)}"
	puts "R2 = #{x2.round(5)}"

end