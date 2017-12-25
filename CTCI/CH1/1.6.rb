#String compression

#brute_force solution
#O(N^2)
# def string_compression(str)
#   result = ''
  
#   i = 0

#   while(i < str.length)
#     count = 0
#     pointer = i
#     until str[pointer] != str[i]
#       count += 1
#       pointer += 1
#     end
#     result += "#{str[i]}#{count}"
#     count = 0
#     i = pointer
#   end

#   result
# end


#Another brute force
#O(N)
def string_compression(str)
  result = ''
  
  currentLetter = str[0]
  count = 0

  str.split('').each_with_index do |el, idx|
    if el === currentLetter
      count += 1
    else
      result.concat("#{currentLetter}#{count}")
      currentLetter = el
      count = 1
    end
  end

  result.concat("#{currentLetter}#{count}") 

  result
end

p string_compression('aabcccccaaa')