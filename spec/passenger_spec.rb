require './lib/passenger'
require 'pry'

RSpec.configure do |config|
    config.formatter = :documentation
end

RSpec.describe Passenger do
    it 'exists' do
        passenger = Passenger.new({"name" =>"Charlie", "age" => 18})

        expect(passenger).to be_an_instance_of(Passenger)
    end

    it 'can store a passenger name' do
        charlie = Passenger.new({"name" =>"Charlie", "age" => 18})

        expect(charlie.name).to eq("Charlie")
    end

    it 'can determine if a passenger is an adult' do
        charlie = Passenger.new({"name" =>"Charlie", "age" => 18})
        taylor = Passenger.new({"name" => "Taylor", "age" => 12})

        expect(charlie.adult?).to eq(true)
        expect(taylor.adult?).to eq(false)
    end

end