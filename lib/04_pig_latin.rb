def translate(word) 

  
 word_array=[]
 words = word.split
   
 words.each do |word|
 n=0
  while n < word.length
      
        if word[n] =~ /[aeiou]/ 
            if word[n] =='u' && word[n-1]=='q'
      
               n+=1  
            end
    
            if word[0] =~ /[aeiou]/
               first=word[0..-1]
               word_array<<first + 'ay'
              break
            end
            second =word[n..-1]
            first = word[0..(n-1)]
            word_array << second +first + 'ay'
            break
  
        else
             n+=1
   
        end
 
   end
   end
  
word_array.join(' ')
end