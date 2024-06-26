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

    it 'can add passengers to the vehicle' do
        vehicle = Vehicle.new("2001", "Honda", "Civic")
        charlie = Passenger.new({"name" =>"Charlie", "age" => 18})
        jude = Passenger.new({"name" =>"Jude", "age" => 20})
        taylor = Passenger.new({"name" => "Taylor", "age" => 12})

        vehicle.add_passenger(charlie)
        vehicle.add_passenger(jude)
        vehicle.add_passenger(taylor)
        # binding.pry
        expect(vehicle.passengers).to eq([charlie, jude, taylor])
    end

    it 'can count the number of adults in the vehicle' do
        vehicle = Vehicle.new("2001", "Honda", "Civic")
        charlie = Passenger.new({"name" =>"Charlie", "age" => 18})
        jude = Passenger.new({"name" =>"Jude", "age" => 20})
        taylor = Passenger.new({"name" => "Taylor", "age" => 12})

        vehicle.add_passenger(charlie)
        vehicle.add_passenger(jude)
        vehicle.add_passenger(taylor)

        expect(vehicle.num_adults).to eq(2)
    end


end