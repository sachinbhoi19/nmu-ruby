puts "Create a Hash using both Ruby syntax styles."
h1={a:1,b:22,c:33,d:44}
puts h1

puts "Get the value of key `:b`."
puts h1[:b]

puts "Add to this hash the key:value pair `{e:5}`"
h1[:e]=5
puts h1


puts "Remove all key:value pairs whose value is less than 3.5"
h1.delete_if {|k,v| v<3.5}
 puts h1

 puts "10.Can hash values be arrays? Can you have an array of hashes? (give examples)"
 arr=[{a:1,b:2},{c:3,d:4}]
 puts arr

 h2={a:[1,2,3],b:[4,5,6]}
 puts h2

 puts "12.Given the following data structures. Write a program that moves the information from the array into the empty hash that applies to the correct person."

 contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

contacts["Joe Smith"][:email] = contact_data[0][0]
contacts["Joe Smith"][:address] = contact_data[0][1]
contacts["Joe Smith"][:phone] = contact_data[0][2]
contacts["Sally Johnson"][:email] = contact_data[1][0]
contacts["Sally Johnson"][:address] = contact_data[1][1]
contacts["Sally Johnson"][:phone] = contact_data[1][2]

puts contacts


puts "13.Using the hash you created from the previous exercise, demonstrate how you would access Joe's email and Sally's phone number?"

puts contacts["Joe Smith"][:email]
puts contacts["Sally Johnson"][:phone]



puts "14.In exercise 12, we manually set the contacts hash values one by one. Now, programmatically loop or iterate over the contacts hash from exercise 12, and populate the associated data from the contact_data array. Hint: you will probably need to iterate over ([:email, :address, :phone]), and some helpful methods might be the Array shift and first methods."

contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
contacts = {"Joe Smith" => {}}
fields = [:email, :address, :phone]

contacts.each do |name, hash|
  fields.each do |field|
    hash[field] = contact_data.shift
  end
end
puts contacts



contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]
contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}
fields = [:email, :address, :phone]

contacts.each_with_index do |(name, hash), idx|
  fields.each do |field|
    hash[field] = contact_data[idx].shift
  end
end
puts contacts

puts "15.Use Ruby's Array method delete_if and String method start_with? to delete all of the words that begin with an \"s\" in the following array."

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

arr.delete_if{|str| str.start_with?('s')}
puts arr
puts "word that not start with s and w"
arr.delete_if{|str| str.start_with?('s','w')}
puts arr


puts "16.Take the following array: and turn it into a new array that consists of strings containing one word. (ex. [\"white snow\", etc...] → [\"white\", \"snow\", etc...]. Look into using Array's map and flatten methods, as well as String's split method.\""

a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']
a=a.map{|str| str.split(" ")}
puts a
