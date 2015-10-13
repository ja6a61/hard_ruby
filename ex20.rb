# ex20.rb
# Wed 14 Oct 2015
# Exercise 20: Functions and Files
#

input_file = ARGV.first

def print_all(f)
	puts f.read
end

def rewind(f)
	f.seek(0)
end

def print_line(line, f)
	puts "#{line}: #{f.gets.chomp}"
end

file = open(input_file)

puts "First, let's print the whole file:\n"
print_all(file)

puts "Now let's rewind '#{file}'"
rewind(file)

puts "Now let's print three lines:\n"

line = 1
print_line(line, file)

line += 1
print_line(line, file)

line += 1
print_line(line, file)

line += 1
print_line(line, file)
