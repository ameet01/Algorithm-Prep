# Multiply Two Arbitrary-Precision Integers



def multiply(num1, num2)
	result = [0] * (num1.length + num2.length)
	
	(num1.length - 1).downto(0).each do |i|
		(num2.length - 1).downto(0).each do |j|
			result[i + j + 1] += num1[i] * num2[j]
			result[i + j] += result[i+j+1] / 10
			result[i + j + 1] %= 10
		end
	end
	
	result

end 

p multiply([1,2,3], [1,2,3])









