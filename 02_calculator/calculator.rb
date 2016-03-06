def add(num1, num2)
  return num1 + num2
end

def subtract(num1, num2)
  return num1 - num2
end

def sum(array1)
  sum = 0
  array1.each do |x|
    sum = sum + x
  end
  return sum
end

# This is the set of numbers the function is using for sum(5): 
{ x | 0 < x <= 5 }
# This is what the function does:
Add up the numbers in the set.
# This is the output of the program:
=> 15

def multiply_it(*numbers)
  numbers = Array(numbers)
  answer = numbers.inject(1) { |product, n| product * n }
  return answer
end

def power(number, exponent)
  answer = number**exponent
  return answer
end

def factorial(number)
  answer = 1
  if number == 0
    answer = 0
  else    
    while number > 1
      answer = answer * number 
      number -= 1
    end 
    return answer
  end
  return answer
end