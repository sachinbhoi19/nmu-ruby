# using the same array from #2, use the select method to extract all
arr = [1,2,3,4,5,6,7,8,9,10]
new_arr=arr.select{|number| number % 2==1}
puts new_arr
