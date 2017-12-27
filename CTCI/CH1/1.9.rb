# String Rotation


#brute force
#O(n)
# def string_rotation(str1, str2)
#   return false if str1.length != str2.length

#   (1...str1.length).each do |i|
#     one = str1[0...i]
#     two = str2[str1.length-i...str2.length]
#     if (one == two)
#       restofone = str1[i...str1.length]
#       restoftwo = str2[0...str2.length-i]
#       if(restofone == restoftwo)
#         return true
#       end
#     end
#   end

#   return false
# end


def string_rotation(str1, str2)
  return false if str1.length != str2.length
  
  string = str1.concat(str1)

  isSubstring(string, str2)
end

p string_rotation('waterbottle', 'erbottlwate')