def rec_intersection(rect1, rect2)
  
    din = rect1.flatten
    dkl = rect2.flatten
    a,b,c,d =din
    a1,b1,c1,d1 = dkl
   
   if c > a1 && d > b1
       
       x = [a,a1].max
       y = [b,b1].max
       
      first = [x,y]
      
      x1 = [c,c1].min
       y1 = [d,d1].min
       
       second = [x1,y1]
       
       
       result = [first,second]
      
         result
   
   else 
     return nil
    
   end
end
 
  
   
   
