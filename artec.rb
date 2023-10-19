require_relative './src/customer'
require_relative './src/scanner'
require_relative './src/studio'
require_relative './src/cloud'

require 'faker'

customer_a = Customer.new name: Faker::Name.first_name, params: {
  email: Faker::Internet.email,
  as_list: [ ArtecStudio.new(17) ],
  cloud: Cloud.new('1 Tb'),
  scanners: [ Leo.new(SecureRandom.random_number), Eva.new(SecureRandom.random_number) ] }

customer_b = Customer.new name: Faker::Name.first_name, params: {
  email: Faker::Internet.email,
  as_list: [ ArtecStudio.new(17) ],
  cloud: Cloud.new('1 Tb'),
  scanners: [ Leo.new(SecureRandom.random_number), Eva.new(SecureRandom.random_number) ] }

puts customer_a.to_s
puts customer_b.to_s
