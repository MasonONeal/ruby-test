# simple program that takes a comment or question and replies based on words used
# user talks to the program

# create array of responses. a hash would not work due to multiple possible responses for same input.

# initialize variables
responses = []



File.open('name_responses.txt') do |f|
  f.each_line do |line|
    pair_array = line.split("} ")
    pair_array.map! {|string| string.tr("\n","")}
    responses << pair_array
  end
end

# show array
puts "press enter when ready"
input = gets.chomp
puts responses.inspect

puts "press enter to start"
input = gets.chomp

# main

system('clear')
puts
puts " Welcome, friend!"
puts
puts
print " Please tell me your name: "
input_string = gets.chomp
puts

# program responds
reply = []
responses.each do |pair|
  if input_string == pair[0]
    reply << pair[1]
  end
end
puts " " + reply.sample
puts

puts " How are you?"
print " "
inut_string = gets.chomp

