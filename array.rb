arr = [1, 2, 3, 3,4,4, 5, 6, 7, 8, 9, 10]

arr.each{|n| puts n}

puts "no greter than 5:"
arr.each{|n| if n>5
   puts n
 end}

 puts "all odd no's"
arr2=arr.select{|n| n%2==0}
  arr2.each{|n| puts n}

puts "array after adding 11 to end and 0 to beginning"
  #arr.push(11)
  #arr.unshift(0)
  arr.insert(0,0)
  arr.insert(11,11)

  arr.each{|n| puts n}


puts "Get rid of \"11\". And append a \"3\""
puts arr.pop
arr<<3
puts "or"
arr[11]=3
arr.each{|n| puts n}


puts"Get rid of duplicates without specifically removing any one value."
puts arr.uniq!
