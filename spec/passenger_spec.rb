require './lib/passenger'
require 'pry'

RSpec.configure do |config|
    config.formatter = :documentation
end

RSpec.describe Passenger do
    it 'exists' do
        passenger = Passenger.new

        expect(passenger).to be_an_instance_of(Passenger)
    end
end