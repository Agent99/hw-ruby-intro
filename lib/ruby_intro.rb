# When done, submit this entire file to the autograder.

# Part 1

def sum arr
   if arr.empty?
      return 0
    else
      eval arr.join('+')
    end
end

def max_2_sum arr
    if arr.size == 0
      return 0
    elsif arr.size == 1
      return arr[0]
    else
      arr = arr.sort
      arr[arr.size-1]+arr[arr.size-2]
    end
end

def sum_to_n? arr, n
   if arr.size == 0||arr.size == 1
     return false
     else
      arr=arr.sort
      i=0
      j=arr.size-1
      while i < j
           if arr[i] + arr[j] == n
               return true
               break
           elsif arr[i] + arr[j] < n
               i = i + 1
           else
               j = j - 1  
          end
      end
      return false
      
   end
end

# Part 2

def hello(name)
   return "Hello, #{name}"
end

def starts_with_consonant? s
  if s =~ /^\w/ && s !~ /^\d/
    if s =~ /^[AaEeIiOoUu]/
      return false
    else
      return true
    end
  else
	return false
	end
end

def binary_multiple_of_4? s
  if s =~ /[^01]/ || s == ""
    return false
  else
    i = Integer("0b#{s}")
    if i % 4 == 0
      return true
    else
      return false
    end
  end
end

# Part 3

class BookInStock
    attr_accessor:isbn
    attr_accessor:price
    def initialize(isbn,price)
      if isbn.empty? || price <= 0
        raise ArgumentError
      end
        @isbn=isbn
        @price=price
    end

    def price_as_string
      format("$%.2f",@price)
    end
end