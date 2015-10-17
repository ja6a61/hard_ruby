# ex33.rb
# Sat 18 Oct 2015
# Exercise 33: While Loops
#

def while_loop(loops, step=1)
	i=0
	number = []
	while i < loops
		puts "Top of loop, i: #{i}"
		number.push(i)
		i += step
		puts "Bottom of loop, i: #{i}"
	end
	number.each {|x| print "#{x}#{x==number.last ? "\n" : ', '}"}

end

puts "#{__FILE__}"

while_loop(50, 5)

