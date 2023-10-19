require_relative './src/customer'
require_relative './src/scanner'
require_relative './src/studio'
require_relative './src/cloud'

require 'faker'

customer_a = Customer.new name: Faker::Name.first_name, params: {
  email: Faker::Internet.email,
  as_list: [ArtecStudio.new(17)],
  cloud: Cloud.new('1 Tb'),
  scanners: [Leo.new(SecureRandom.random_number), Eva.new(SecureRandom.random_number)] }

customer_b = Customer.new name: Faker::Name.first_name, params: {
  email: Faker::Internet.email,
  as_list: [ArtecStudio.new(18)],
  cloud: Cloud.new('200 Gb'),
  scanners: [Eva.new(SecureRandom.random_number)] }

puts customer_a.to_s
puts customer_b.to_s

as_studio = customer_a.artec_studio_list.first
puts as_studio
as_studio.store_data 'scanned project'
cloud = customer_a.cloud
cloud.store_data 'another scanned project'

