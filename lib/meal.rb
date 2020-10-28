class Meal
    @@all = []
    def initialize(waiter,customer,total,tip)
        @waiter = waiter
        @customer = customer
        @total = total
        @tip = tip
        @@all << self
    end
    attr_reader :waiter,:customer,:total,:tip
    def self.all
        @@all
    end
end