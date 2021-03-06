# When done, submit this entire file to the autograder.
# ADuRoR HW #1
# Justin M. Deardorff
# justindeardorff@gmail.com
# Part 1

def sum(array)
    #returns the sum of the values of an integer array.  Returns zero for empty array
    array.inject(0){|memo, x| memo+x}
end  

def max_2_sum arr
  # returns the sum of largest two integers in an array.  Returns zero for empty.
  # returns value of integer if only one integer in array
  i=0
  if arr.length>1
    #code that sorts the array and then takes the last two elements after sorting
    arr=arr.sort
    a=arr.length-1
    b=arr.length-2
    i=arr[a]+arr[b]
  elsif arr.length==1
    #code sets i=value of single element
    i=arr[0]
  else 
    #array must be empty, return zero
    i=0
  end
  
  return i
  
end

def sum_to_n? arr, n
  # takes an array of integers and an additional integer.  Returns true if any two integers in the array sum to n
  answer=false
  
  if arr.combination(2).find { |x, y| x+y == n } != nil
    answer=true
  end
  
  return answer
end  

# Part 2

def hello(name)
  # takes a string argument, concatenates and returns a Hello, [name] string
  welcome = "Hello, #{name}"
  return welcome
end

def starts_with_consonant? s
  # takes a string arguments and returns a boolean true if the string begins with a consonant
  (s[0] =~ /[bcdfghjklmnpqrstvwxyz]/i) == 0
end

def binary_multiple_of_4? s
  # accepts a string, returns true if the string is a binary value that is a multiple of four, else false
  if (s =~ /[01]/) !=  0
    return false
  end  
  result = 0
  s = s.split("").reverse
  multipliers = [32768, 16384, 8192, 4096, 2048, 1024, 512, 256, 128, 64, 32, 16, 8, 4, 2, 1].reverse
  s.each_with_index do |c, i|
    result += multipliers[i] * c.to_i
  end
  return result % 4 == 0
end

# Part 3

class BookInStock
# A class that stores a book ISBN and price with 2 decimal precision
  def initialize(isbn, price)
    if (isbn == '' || price<=0) 
      raise(ArgumentError) 
    end
    @isbn=isbn
    @price=price
  end 
  def isbn
    @isbn
  end  
  def price 
    @price
  end  
  def price_as_string
    # price formatted with dollar sign and 2 decimal places
    return "$" + "%.2f" % @price
  end  
  def price=(new_price)
    if new_price<=0 
      raise(ArgumentError) 
    end
    @price=new_price
  end
  def isbn=(new_isbn)
    if new_isbn=='' 
      raise(ArgumentError) 
    end
      @isbn=new_isbn
  end
end
