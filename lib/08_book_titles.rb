class Book
  
  def title= (value)
    
        array= Array.new
  
        dont_like_words= %w{and the a an in of}
   
        value.capitalize.split(/\b/).each do |a|
           if dont_like_words.include?(a)
             array << a
           else
             array<<  a.capitalize
           end
       end
  
  @wha =array.join
  end
  
   
   
  def title
    @wha
  end
  
  
end
