def ordered_vowel_words(str)
  string =''
  str.split.each do |word|
  if ordered_vowel_word?(word)
    string << word + ' '
  end
  end
  string.chop
end


def ordered_vowel_word?(word)
 arr = word.scan(/\w/)
 
 vowels = arr.select { |a| a.match(/[aeiou]/)  }
  
  until vowels.empty?
   con= vowels.pop
    vowels.each do |a|
      
     if  con >= a
       next
     else
       return false
     end
  end
  end
 return true
end
