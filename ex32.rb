# ex32.rb
# Sat 17 Oct 2015
# Exercise 32: Loops and Arrays
#

the_count = [1, 2, 3, 4, 5]
fruits = ['apples', 'oranges', 'pears', 'apricots']
change = [1, 'pennies', 2, 'dimes', 3, 'quarters']

# traditional way to loop through an array
for number in the_count
	puts "This is count #{number}"
end

# More of a Ruby way for array-looping...
fruits.each do |fruit|
	puts "A fruit of type: #{fruit}"
end

# And using indexes
fruits.each_index { |i| puts "Fruit '#{i}' is : #{fruits[i]}" }

# Loop through mixed lists also...
change.each {|i| puts "I got #{i}"}

# Build a list,
element = []

# then use the range operator to loop
(0..5).each do |i|
	puts "adding #{i} to the list." 
	# pushes variable i on to the end of the list
	element.push(i)
end

# Now we can print these last elements out
element.each {|i| puts "Element was: #{i}"}

