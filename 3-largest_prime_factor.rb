# The prime factors of 12195 are 5, 7, 13 and 29.
#
# What is the largest prime factor of the number 600851475143?

n = 600851475143
f = 3

# My goal is to divide n by f until n gets to 1.
#
# Since we know that 2 isn't the largest prime factor, we will simply start at
# 3 to cut down on the amount of computations needed to calculate.
while n > 1 
  # Divide n by f if it's possible to do so 
  if n % f == 0
    n /= f

  # If it's not possible to do so, then we must increase the value of f
  else
    # To halve the number of comuptations, we'll only use odd factors as the
    # only possible even prime number is 2 (and we aren't starting with that).
    f += 2
  end
end

puts "The answer is: #{f}"
