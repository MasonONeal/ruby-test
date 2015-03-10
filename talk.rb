# simple program that takes a comment or question and replies based on words used
# user talks to the program

# initialize variables
responses = []
input_string = ""
user_name = ""

# read response pairs from file into an array
# a hash would not work because I want to multiple possible responses for same input (duplicate keys)

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

until ( user_name == "exit" )
  # system('clear')
  puts
  puts " Welcome, friend!"
  puts
  puts
  puts " Please tell me your name: "

  user_name = gets.chomp
  puts

  # program responds
  reply = []
  responses.each do |pair|
    if user_name == pair[0]
      reply << pair[1]
    end
  end
  if reply == []
    puts " Hi, " + user_name + "."
  else
    puts " " + reply.sample
  end

  puts
  puts " How are you?"
  print " "
  inut_string = gets.chomp
end


