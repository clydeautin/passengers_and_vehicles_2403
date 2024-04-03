require './lib/passenger'
require './lib/vehicle'
require 'pry'

RSpec.configure do |config|
    config.formatter = :documentation
end

RSpec.describe Vehicle do
    it 'exists' do
        vehicle = Vehicle.new("2001", "Honda", "Civic")

        expect(vehicle).to be_an_instance_of(Vehicle)
    end

    it 'can check if a vehicle is speeding' do
        vehicle = Vehicle.new("2001", "Honda", "Civic")

        expect(vehicle.speeding?).to eq(false)
    end

    it 'can make a vehicle speed' do
        vehicle = Vehicle.new("2001", "Honda", "Civic")
        vehicle.speed

        expect(vehicle.speeding?).to eq(true)
    end

end