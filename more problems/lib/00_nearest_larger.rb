def nearest_larger(arr, idx)
  
 
    n=1
  loop do
    
    if (arr[idx-n]== nil) && (arr[idx+n] == nil)
        return nil
    end
    
  
    if idx-n >=0 && (arr[idx-n] > arr[idx]) 
       return arr.index(arr[idx-n])
    
      
  elsif  idx+n < arr.length && arr[idx+n] > arr[idx] 
   
    return arr.index(arr[idx+n])
      
    else 
      n+=1
    
    end
   
  end   
  end
