# ex18.rb
# Wed 14 Oct 2015
# Exercise 18: Names, Variables, Code, Functions
#
def print_two(*args)
	arg1, arg2 = args
	puts "Func 'print_two(*args)'"
	puts "arg1: #{arg1}, arg2: #{arg2}"
end

def print_two_args(arg1, arg2)
	puts "Func 'print_two_args(arg1, arg2)'"
	puts "arg1: #{arg1}, arg2: #{arg2}"
end

def print_one(arg1)
	puts "Func 'print_one(arg1)'"
	puts "arg1: #{arg1}"
end

def print_none()
	puts "Func 'print_none()'"
	puts "I got nothin."
end

print_two("Jason", "Angus")
print_two_args("Jason", "Angus")
print_one("Just one arg!!")
print_none
