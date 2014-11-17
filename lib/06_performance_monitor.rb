def measure(num=1)
  
     before = Time.now  
     
     num.times do
       yield
     end
     after = Time.now 
 
      
     time_elapsed = (after - before) / num
 
     time_elapsed  
end   

elapsed_time = measure do
 
end

 