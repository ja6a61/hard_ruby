# ex16.rb
# Exercise 16: Reading and Writing Files
# Thu 08 Oct 2015
#

filename = ARGV.first

puts "We're gonna erase #{filename}"
puts 'If you don\'t wanna do that, hit CTRL-C'
puts 'If you do want that, hit ENTER'

$stdin.gets

puts 'Opening the file...'
target = open(filename, 'w')

puts 'Truncating the file. Goodbye file contents!!'
target.truncate(0)

puts 'Now I\'m gonna ask you for three lines.'

print 'Line 1: '
line1 = $stdin.gets.chomp
print 'Line 2: '
line2 = $stdin.gets.chomp
print 'Line 3: '
line3 = $stdin.gets.chomp

puts 'Gonna write these lines to the file just now...''

target.write(line1)
target.write("\n")
target.write(line2)
target.write("\n")
target.write(line3)
target.write("\n")

puts "Finally, let us close our file. '#{filename}'."

target.close

