# When done, submit this entire file to the autograder.

# Part 1

def sum arr
    sum_result = 0;
    arr.each do |x|
        sum_result = sum_result + x
    end
    sum_result
end

def max_2_sum arr
    if arr.length == 0
        return 0
    elsif arr.length == 1
        return arr[0]
    else
        arr = arr.sort
        len = arr.length
        return arr[len-1] + arr[len-2]
    end
end

def sum_to_n? arr, n
  if arr.length <= 1
    return false
  end
  arr = arr.sort
  i = 0; j = arr.length-1;
  flag = false
  while i!=j
    if arr[i]+arr[j] == n
      flag = true
      break
    elsif arr[i]+arr[j] < n
      i = i+1
    else
      j = j-1
    end
  end
  flag
end

# Part 2

def hello(name)
  return "Hello, #{name.to_s}"
end

def starts_with_consonant? s
  return s =~ /\A(?=[^aeiou])(?=[a-z])/i
end

def binary_multiple_of_4? s
  if s == '0'
    return true
  end
  x = s.to_i(4)
  if x == 0
    return false
  end
  if x % 4 == 0
    return true
  else
    return false
  end
end

# Part 3

class BookInStock
  def initialize(isbn, price)
    raise ArgumentError.new() if isbn=='' or price<=0
    @isbn = isbn
    @price = price
  end
  attr_accessor(:isbn, :price)
  def price_as_string
    price = @price
    return "$%.2f" % price
  end
end
