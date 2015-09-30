def average(numbers)
  sum = 0
  #remove all the nils in the array
  numbers = numbers - [nil]
  numbers.each do |num|
      sum += num
  end
  #if numbers.size > 0 
  if !numbers.empty?
    sum / numbers.size
  end
end

## TEST HELPER METHOD
def test_average(array = [])
  print "avg of #{array.inspect}:"
  if !array.nil?
    result = average(array)
    p result
  end 
end

## TEST CODE
test_average([4,5,6]) # => 5
test_average([15,5,10]) # => 10

# Should treat string like number
test_average([15,'5'.to_i ,10]) # => 10

# Should show decimal value
test_average([10.to_f, 5.to_f]) # => 7.5 instead of just 7

# Watch out! Even tests can have bugs!
test_average([9, 5, 7])

# Empty set should return nil, not throw an error
test_average([]) # => nil

# Non-existent set should return nil
test_average() # => nil

# BONUS: Should ignore nils in the set
test_average([9,6,nil,3]) # => 6
