#Computing an alteration

def alteration(array)
  array = array.sort
  (0...array.length-1).step(2) do |i|
    array[i], array[i+1] = array[i+1], array[i] 
  end

  array
end


p alteration([44,3,1,5,7,8,100])