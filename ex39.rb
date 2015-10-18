# ex39.rb
# Mon 19 Oct 2015
# Exercise 39: Hashes, Oh Lovely Hashes
#

# Create a mapping of states to abbreviations
states = {
	'Western Australia' => 'WA',
	'Northern Territory' => 'NT',
	'Queensland' => 'QLD',
	'New South Wales' => 'NSW',
	'Victoria' => 'VIC',
	'Tasmania' => 'TAS',
	'South Australia' => 'SA',
	'Australian Capital Territory' => 'ACT'
}

# Capital cities of states
cities = {
	'NT' => 'Darwin',
	'QLD' => 'Brisbane',
	'NSW' => 'Sydney',
	'VIC' => 'Melbourne',
	'TAS' => 'Hobart',
	'SA' => 'Adelaide',
	'ACT' => 'Canberra'
}

cities['WA'] = 'Perth'

puts '-' * 10
puts "Queensland's abbreviation is: #{states['Queensland']}"
puts "Tasmainia's abbreviation is: #{states['Tasmainia']}"

puts '-' * 10
puts 'Cities'
puts "South Australia has: #{cities[states['South Australia']]}"
puts "Western Australia has: #{cities[states['Western Australia']]}"

# All state abbreviations
puts '-' * 10
cities.each do |abbrev, city|
	puts "#{abbrev} has the city #{city}"
end

# Now do both at the same time
puts '-' * 10
states.each do |state, abbrev|
	city = cities[abbrev]
	puts "#{state} is abbreviated #{abbrev} and has city #{city}"
end

# We get nil if we access something not contained in the hash
puts '-' * 10
state = states['Antarctica']

if !state 
	puts "Sorry, no Antarctica."
end

# Default values using ||= with nil the result
city = cities['ANT']
city ||= 'Does Not Exist'
puts "The city for the state 'ANT' is: #{city}"

city = cities['WA']
city ||= 'Does Not Exist'
puts "The city for the state 'WA' is: #{city}"
