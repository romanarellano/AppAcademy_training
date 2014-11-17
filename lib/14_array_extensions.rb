class Array
    
def sum()
       if self.empty?
         return 0
      else
         self.inject(0) {|a,b| a +b}
      
      end
end
      
def square
      if self.empty?
        []
      else
        self.collect { |a| a*a}
      end
      end
    
def square!
       
      ff =collect { |a| a * a}
      self.replace(ff)
   
end
    
    
end