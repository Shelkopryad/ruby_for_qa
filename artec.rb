require_relative './src/customer'
require_relative './src/scanner'
require_relative './src/studio'
require_relative './src/cloud'

require 'faker'

test = Customer.new name: Faker::Name.first_name, params: {
  email: Faker::Internet.email,
  as_list: [ ArtecStudio.new(17) ],
  cloud: Cloud.new('1 Tb'),
  scanners: [ Leo.new(SecureRandom.random_number), Eva.new(SecureRandom.random_number) ] }

puts test.to_s