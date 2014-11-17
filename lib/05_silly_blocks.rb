def reverser
    array=[]

    yield.split.each do |a|
    array << a.reverse
end
    array.join(' ')
end
    
    result =reverser do 
    'hello hello'
    end  
 
def adder(num=1) 
     yield + (num)
end
 
     result = adder do |add|
     6
     end
 
n=4
def repeater(num=1)
     num.times do
     yield
     end
end

     block_was_executed = repeater do
     block_was_executed=true
     end

     repeater do
     n+=1
     end








