def no_repeats(year_start, year_end)
  arr=[]
  (year_start..year_end).each do |year|
    if no_repeat?(year)
      arr<< year
    end
  end
  arr
end
 
 
def no_repeat?(year)
  unique = []
 
  year.to_s.scan(/\d/).each do |digit|
    
    if unique.include?(digit)
    return  false
      
      else
        unique << digit
    end
  end
 return true
end