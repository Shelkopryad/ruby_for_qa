require_relative '../spec_helper'
require_relative '../src/scanner'
require_relative '../src/customer'

describe 'Scanner' do
  let(:leo) { Leo.new(123123123) }

  context 'Leo' do
    it 'each Leo has name Leo' do
      expect(leo.name).to eq('Leo')
    end
  end

  context 'Customer' do
    it 'customer has Eva' do
      customer = Customer.new name: 'Qwe',
                              params: {
                                scanners: [Eva.new(123123123)]
                              }
      expect(customer.scanners.first.name).to eq('Eva')
    end

    it 'customer has Leo + Eva' do
      customer = Customer.new name: 'Qwe',
                              params: {
                                scanners: [Eva.new(123123123), leo]
                              }
      expect(customer.scanners.size).to eq(2)
      expect(customer.scanners).to include(Leo.new(1231321))
    end
  end
end