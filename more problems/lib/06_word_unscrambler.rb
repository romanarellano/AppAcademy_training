
def word_unscrambler(str, words)
  word_pick=[]
   words.each do |word|
     
   if word_checker(str,word) == nil
    next
   end
  word_pick << word_checker(str,word)
      
    end
    word_pick
   end
 
  
  
def word_checker(str,word)


word.scan(/\w/).each do|letter|
  
    if str.include?(letter) && word.length == str.length
next
  else
  return nil
    end
    end
 word

    end