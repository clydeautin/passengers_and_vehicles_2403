require './lib/passenger'
require 'pry'

RSpec.configure do |config|
    config.formatter = :documentation
end

RSpec.describe Passenger do
    it 'exists' do
        passenger = Passenger.new('Charlie')

        expect(passenger).to be_an_instance_of(Passenger)
    end

    it 'can store a passenger name' do
        charlie = Passenger.new('Charlie')

        expect(charlie.name).to eq('Charlie')
    end

end