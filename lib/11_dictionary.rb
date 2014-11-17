class Dictionary 
 attr_accessor :entries
  def initialize(hash={})
    @entries = hash
  end
  
  def add(key_or_hash=nil)
    
     if key_or_hash.is_a?(Hash)
     key_or_hash.each do |a,b|  
       @entries[a] =b
     end
     @entries
     
     else
     @entries[key_or_hash] = nil
     
     end


  end
 
  def keywords
     @entries.keys.sort
  end
  

  def include?(word)
     if @entries.keys.include?(word)
       true
     else
       false
     end
  end 
 
  def find(str)
     hash = {}
     @entries.each do  |a,b| 
       
     if  a.include?(str)
        hash.update(a=>b)
     else 
        'hello'
     end
     end
     hash
 end
 
 def printable
     str=''
     @entries.sort.each do |a,b|
     str << %Q+[#{a}] \"#{b}\"\n+
     end
     str.chop 
  end
end




 