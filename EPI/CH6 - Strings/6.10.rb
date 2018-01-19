#compute all valid ip addresses



def valid_ip?(str)
  return false unless str.match(/^\d+(\.\d+){3}$/)
  str.split('.').all?{|el| el.to_i >= 0 && el.to_i <= 255}
end