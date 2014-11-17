def echo(say)
  say
end
 
def shout(word)
  word.upcase
end

 
def repeat(word,num=2)
  word << ' '
  wording =  word * num
  wording = wording.chop
  wording
end

def start_of_word(word,num)
 
 word[0..(num-1)]
 
end 
 
def first_word(words)
 words_array = words.split
 words_array[0]
  
end

def titleize(words)
 
 words_arr = words.capitalize.split
 
  good_sentence=[]
  
 little_words = %w{and the over}
  
  words_arr.each do |word| 
   if  little_words.include?(word)
   good_sentence << word.downcase
   else
   good_sentence<< word.capitalize
   end

   end  
   good_sentence.join(' ')
end
