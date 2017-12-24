# Increment an abitraty-precision integer

# def plus_one(array)
#   (array.join.to_i + 1).to_s.split('').map(&:to_i)
# end


def plus_one(array)
	array[-1] += 1
	(array.length-1).downto(1).each do |i|
		if(array[i] === 10)
			array[i] = 0
			array[i - 1] += 1
		end
	end

	if array[0] == 10
		array[0] = 1
		array.push(0)
	end
	array
end


p plus_one([1,9,9])