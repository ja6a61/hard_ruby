# remove_punctuation.rb
# Wed 14 Oct 2015
# Write a Ruby program that asks you for a string. Have the program remove any
# punctuation from the string and then print it out in reverse.

def run!
  print 'What do you have to say about anything? '
  answer = gets.chomp
  puts  'This is what you said, reversed and without punctuation:'
  puts awkward_text(answer)
end

def awkward_text(str)
  str.gsub(/[\.,:;¡!¿\?'"]/, '').reverse
end

puts "__FILE__: '#{__FILE__}'"
run! if __FILE__ == $0