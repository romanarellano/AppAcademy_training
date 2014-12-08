def wonky_coins(n)
 
 if n == 0
   return 1
 end
  
  bb=  wonky_coiner(n)
  bb.flatten.length
  
end
 
   def wonky_coiner(num)
     
   eat =[]
a = num/2
b = num/3
c = num/4

    
     
     [a,b,c].each do |coin|
     if coin > 0
       eat <<  wonky_coiner(coin)
     else 
       eat << coin
     
     end
     end
  eat 
  end

