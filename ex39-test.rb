# ex39-test.rb
# Sat 24 Oct 2015
# Exercise 39: Hashes, Oh Lovely Hashes
# Testing our own hash module
#

require './ex39-dict.rb'

# create a mapping of state to abbreviation
states = Dict.new()
Dict.set(states, 'Western Australia', 'WA')
Dict.set(states, 'Northern Territory', 'NT')
Dict.set(states, 'Queensland', 'QLD')
Dict.set(states, 'New South Wales', 'NSW')
Dict.set(states, 'Victoria', 'VIC')
Dict.set(states, 'Tasmania', 'TAS')
Dict.set(states, 'South Australia', 'SA')
Dict.set(states, 'Australian Capital Territory', 'ACT')

# create a basic set of states and some cities in them
cities = Dict.new()
Dict.set(cities, 'WA', 'Perth')
Dict.set(cities, 'NT', 'Darwin')
Dict.set(cities, 'QLD', 'Brisbane')
Dict.set(cities, 'NSW', 'Sydney')
Dict.set(cities, 'VIC', 'Melbourne')
Dict.set(cities, 'TAS', 'Hobart')
Dict.set(cities, 'SA', 'Adelaide')
#Dict.set(cities, 'SA', 'Mt Gambier')

# print out some cities
puts '-' * 10
puts "WA state has: #{Dict.get(cities, 'WA')}"
puts "SA state has: #{Dict.get(cities, 'SA')}"

# print out some states
puts '-' * 10
puts "Victoria's abbreviation is: #{Dict.get(states, 'Victoria')}"
puts "Tasmania's abbreviation is: #{Dict.get(states, 'Tasmania')}"

# do it by using the state then cities dict
puts '-' * 10
puts "Victoria has: #{Dict.get(cities, Dict.get(states, 'Victoria'))}"
puts "Tasmania has: #{Dict.get(cities, Dict.get(states, 'Tasmania'))}"

# print every state abbreviation
puts '-' * 10
Dict.list(states)

# print every city in state
puts '-' * 10
Dict.list(cities)

puts '-' * 10
# by default ruby says "nil" when something isn't in there
state = Dict.get(states, 'Texas')

if !state
	puts "Sorry, no Texas"
end

# default values using ||= with the nil result
city = Dict.get(cities, 'TX', 'Does not exist')
puts "The city for the state 'TX' is: #{city}"

