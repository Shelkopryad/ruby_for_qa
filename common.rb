
puts 'Hello world!'

hello_world = false
puts hello_world

x = rand 5

if x <= 3
  puts "GO home"
else
  puts "Another bottle of beer"
end

x = 1
while x < 5
  puts 'Drink'
  x += 1
end



# vedro.each { |element| puts element }

def sort_apples(vedro, vedro2)
  vedro.each_with_index do |element, index|
    puts "Aplle #{element} to another vedro"
    if element == 'Apple'
      vedro2 << element
    end
  end
  vedro2
end


vedro = %w[Apple Grusha Arbuz Sliva Apple]
vedro2 = ['Apple', 'Grusha', 'Arbuz', 'Sliva', 'Apple']
vedro3 = ['Apple', 'Arbuz', 'Sliva', 'Apple']

vedro4 = []

vedro5 = sort_apples(vedro, vedro4)
puts vedro5.inspect


test_hash = { name: 'Qwe', as_version: 18 }
puts test_hash
puts test_hash[:as_version]














