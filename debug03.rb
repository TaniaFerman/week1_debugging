def sum(list)
  sum = 0

  #with each
  list.each do |ele|
    sum += ele
  end
  sum
end

def sum2(list)
  sum = 0
#with .map
  list.map {|ele| sum += ele}  
  sum 
 end 

def sum3(list)
 sum = 0
  #with .select
  list.select {|ele| sum += ele}
 sum
end



list1 = [16,21,31,42,55]

# 1. The following should return 165 instead of an error
puts sum(list1)

# 2. How would you refactor it using an enumerable method other than each? Examples of 
#enumerables: map, select, inject, reject, detect.
puts sum2(list1)
puts sum3(list1)

