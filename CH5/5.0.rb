


#put all evens at the start of array, all odds at the end

def even_odd(array)
	start = 0
	last = array.length - 1

	while start < last
		if array[start] % 2 == 0
			start += 1
		else
			array[start], array[last] = array[last], array[start]
			last -= 1
		end
	end

	array
end

p even_odd([3,2,1,5,7,0,2,1,2,4,5])