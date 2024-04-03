require './lib/passenger'
require './lib/vehicle'
require 'pry'

RSpec.configure do |config|
    config.formatter = :documentation
end

RSpec.describe Vehicle do
    it 'exists' do
        passenger = Vehicle.new("2001", "Honda", "Civic")

        expect(vehicle).to be_an_instance_of(Vehicle)
    end


end