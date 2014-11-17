
class Temperature
  
  def initialize(hashy)
         @temp = hashy
  end
  
  class Celsius
        def initialize(num)
           Temperature.new(:c => num)
        end
  end
  
  class Fahrenheit
        def initialize(num)
           Temperature.new(:f => num)
        end
  end
  
  
        def self.from_celsius(num)
           Temperature.new(:c => num)
        end
   
        def self.from_fahrenheit(num)
           Temperature.new(:f => num)
        end
  
  def in_fahrenheit
        f=nil
  
        if @temp.keys ==[:c]
           @temp.each  do |a,b| 
           f = (b * 1.8)  +32
        end
        f
        else
    
           @temp.values.join.to_i
        end 
  end
  
  def in_celsius
        c=nil
        if @temp.keys == [:c]
           @temp.values.join.to_i
        else
           
           @temp.each do  |a,b|
           c=(5/9.0 * b -17).to_i
           
        end
           c  
        end
  end
end 

 class Celsius < Temperature
     def initialize(num)
     @temp ={c: num}
     end
 end
  
  class Fahrenheit < Temperature
    def initialize(num)
    @temp ={ f: num}
    end
  end
