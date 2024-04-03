class Vehicle

    attr_reader :model_year,
                :make,
                :model

    def initialize(model_year, make, model)
        @model_year = model_year
        @make = make
        @model = model
        @speeding = false
    end

    def speeding?
        @speeding
    end

    def speeding?
        @speeding = true
    end
end