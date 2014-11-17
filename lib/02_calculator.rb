
   
def add(num1,num2)
  num1 + num2
end

def subtract(num1,num2)
  num1 - num2
end
 
def sum(arr)
  res =0
  arr.each  {|b| res +=b }
  res  
end

def multiply(num1,num2)
  num1 * num2
end

def multiply_sev(arr)
  result = 1
  arr.each { |a| result *=a}
  result
end

def power(num1,num2)
   res=1
   num2.times{ res*=num1}
   res
end

def factorial(num)
  if num<=0
   return "need a positive number"
  end
   
if num==1
 return num
   
  
else 
   num * factorial(num-1)
end
 
  end
