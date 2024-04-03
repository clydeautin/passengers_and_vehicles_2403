class Vehicle

    attr_reader :model_year,
                :make,
                :model,
                :passengers,
                :adult_count

    def initialize(model_year, make, model)
        @model_year = model_year
        @make = make
        @model = model
        @speeding = false
        @passengers = []
        @adult_count = 0
    end

    def speeding?
        @speeding
    end

    def speed
        @speeding = true
    end

    def add_passenger(passenger)
        @passengers << passenger
    end

    def num_adults
        num_adults = passengers.map { |passenger| passenger.adult? }
        num_adults.count(true)
    end
end