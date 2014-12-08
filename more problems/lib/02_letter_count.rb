def letter_count(str)
  
  
  str.scan(/\w/).inject(Hash.new(0)) do |hash,st|
    
    hash[st] +=1
   hash
  end
end
