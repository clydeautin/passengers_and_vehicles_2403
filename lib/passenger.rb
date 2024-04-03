class Passenger

    attr_reader :name, :age

    def initialize(details)
        @name = details["name"]
        @age = details["age"]
        @driver
    end

    def adult?
        @age >= 18
    end
end