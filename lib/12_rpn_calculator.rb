class RPNCalculator
     
   def initialize
       @arr= Array.new
   end
  
 
   def push(num)
    
        @arr.push(num)
   end
  
   def plus
        raise "calculator is empty" if @arr.empty?
        n=0
        another = []
      while n < 2
      
        another << @arr.pop

        n+=1
      end
 
         @total =another[-2] + another[-1]
    
      if @arr == nil
         @total
      else
         @arr.push @total
      end
   end
  
   def minus
  
          raise "calculator is empty" if @arr.empty?
          n=0
          another = []
       while n < 2
      
          another << @arr.pop
          n+=1
       end
          reverse = another.reverse

          @total =reverse[-2] - reverse[-1]
       if @arr == nil
          @total
       else
          @arr.push @total
       end
end
  
  def divide
    
           raise "calculator is empty" if  @arr==[]
           n=0
           another = []
       while n < 2
      
           another << @arr.pop
           n+=1
       end
           reverse = another.reverse
           @total =reverse[-2].to_f / reverse[-1]
       if  @arr == nil
           @total
       else 
           @arr.push @total
       end
 
   end
  
   def times
           raise "calculator is empty" if @arr.empty?
           n=0
           another = []
      while n < 2
      
           another << @arr.pop
           n+=1
      end
           reverse = another.reverse
           @total =reverse[-2] *  reverse[-1]
      if   @arr == nil
           @total
      else
           @arr.push @total
      end
   
   
  end
    
  def tokens(str)
           bb =[]
           op= %w{* - / +}
           str.split.map { |a| op.include?(a) ? a.to_sym: a.to_i }
  end
   
  def value
    @total
  end
  
 #Im happy it came out! 
def evaluate(str)
 

        arr = str.split
        arr.each do |a|
  
if    a=="+" 
          n  = arr.index("+")
     
          total = arr[n-2].to_i + arr[n-1].to_i
        
          arr[n-2] = total
          arr.delete(arr[n])
          arr.delete(arr[n-1])
         
           if arr.length == 1
              return arr[0]
           end
              return  evaluate(arr.join(' '))
           
elsif  a=="*" 
       n  = arr.index("*")
    
           total = arr[n-2].to_i * arr[n-1].to_i
           
           arr[n-2] = total
           arr.delete(arr[n])
           arr.delete(arr[n-1])
         
          if arr.length == 1
            return  arr[0]
          end
         
          return evaluate(arr.join(' '))
      
elsif  a=="-" 
          n  = arr.index("-")
    
          tot = arr[n-2].to_i - arr[n-1].to_i
          arr[n-2] = tot
          arr.delete(arr[n])
          arr.delete(arr[n-1])
         
          if arr.length == 1
            return  arr[0]
          end
         
           return evaluate(arr.join(' '))
           
  elsif  a=="/" 
           n  = arr.index("/")
      
           total = arr[n-2].to_f / arr[n-1].to_i
           arr[n-2] = total
           arr.delete(arr[n])
           arr.delete(arr[n-1])
         
          if arr.length == 1
             return arr[0]
          end
         
          return evaluate(arr.join(' '))
           
  else  next
  end
  end
  end
  
  
  
 end