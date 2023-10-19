puts 'Hello world!'

# variables
string_variable = 'Hello world!'
puts string_variable

number_variable = 123123
puts number_variable

boolean_variable = false
puts boolean_variable

array_variable = ['qwe', 123, true]
puts array_variable.inspect

hash_variable = {
  'qwe' => 123,
  'asd' => 234
}
puts hash_variable.inspect

CONSTANT_VARIABLE = 'constant'.freeze
puts CONSTANT_VARIABLE

# conditionals
x = rand 5
if x >= 3
  puts "GO home"
else
  puts "Another bottle of beer"
end

puts x >= 3 ? "GO home" : "Another bottle of beer"

# loops
x = 1
while x < 5
  puts 'Drink'
  x += 1
end
puts "x = #{x}, stop drinking"

array_variable.each do |var|
  puts var
end

hash_variable.each do |key, value|
  puts "#{key}: #{value}"
end
