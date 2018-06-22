# Read the problem statement to make sure you fully understand the problem
# Identify the base case(s)
# Determine the inductive step
# Write the function
# Run the provided test cases to verify you have a working solution

#Write a function sum_to(n) that uses recursion to calculate the sum from 1 to n (inclusive of n).

def sum_to(n)
  return 1 if n == 1
  return nil if n<1
  n + sum_to(n-1)
end



#Write a function add_numbers(nums_array) that takes in an array of Fixnums and returns the sum of those numbers. Write this method recursively.
def add_numbers(nums_array)
  return nums_array[0] if nums_array.size ==1
  return nil if nums_array.empty?

  nums_array[0] + add_numbers(nums_array[1..-1])
end


#Let's write a method that will solve Gamma Function recursively. The Gamma Function is defined Γ(n) = (n-1)!.

def gamma_fnc(n)
  return nil if n == 0
  return 1 if n == 1
  (n-1) * gamma_fnc(n-1)
end

#Write a function ice_cream_shop(flavors, favorite) that takes in an array of ice cream flavors available at the ice cream shop, as well as the user's favorite ice cream flavor. Recursively find out whether or not the shop offers their favorite flavor.

def ice_cream_shop(flavors, favorite)
  return false if flavors == []
  return true if flavors[0] == favorite
  ice_cream_shop(flavors[1..-1], favorite)
end

#Write a function reverse(string) that takes in a string and returns it reversed.

def reverse(string)
  return string if string.length <= 1
  string[-1] + reverse(string[0..-2])
end
