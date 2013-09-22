RANGE = 1..100

def divisible_by_three?(number)
  divisible_by?(number, 3)
end

def divisible_by_five?(number)
  divisible_by?(number, 5)
end

# Converts two numbers into floats and divides one by the other.
# If the result is a whole number (e.g. 3.0 / 3.0 #=> 1.0), then it is divisible.
# If the number is not whole (e.g. 7.0 / 3.0 #=> 2.3333....) then it is not.
# Returns true or false.
def divisible_by?(number, divisor)
  result = (number.to_f / divisor.to_f)
  represents_a_whole_number?(result)
end

# Is this float a whole number (e.g. is it 3.0, or 3.12?)
# .to_i rounds a float down to an integer.
# Comparing an integer to a float using == will return true
# if they represent the same number, (e.g. 3.0 == 3 #=> true).
# Returns true or false.
def represents_a_whole_number?(float)
  float.to_i == float
end

RANGE.each do |number|

  if divisible_by_three?(number)
    output = "fizz"
  elsif divisible_by_five?(number)
    output = "buzz"
  else
    output = number.to_s
  end

  puts output
end
