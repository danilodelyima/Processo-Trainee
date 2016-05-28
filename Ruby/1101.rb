 num1, num2  = gets.split(' ').map{ |x| x.to_i}

 soma = 0

 while num1 > 0 and  num2 > 0
 	if(num1 < num2)
 		(num1..num2).each do |i|
    		print "#{i} "
    		soma = soma + i
    		
		end
	puts "Sum=#{soma}"
	else
		(num2..num1).each do |i|
    		print "#{i} "
    		soma = soma + i
    		
    	
		end
	puts "Sum=#{soma}"
	end
	num1, num2  = gets.split(' ').map{ |x| x.to_i}
	soma = 0

 end