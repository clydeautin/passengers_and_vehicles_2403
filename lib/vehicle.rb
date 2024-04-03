class Vehicle

    attr_reader :model_year,
                :make,
                :model,
                :passengers

    def initialize(model_year, make, model)
        @model_year = model_year
        @make = make
        @model = model
        @speeding = false
        @passengers = []
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
end