class Waiter
    @@all = []
    def initialize(name,years)
        @name = name
        @yrs_xperience = years
        @@all << self
    end
    attr_accessor :name,:yrs_xperience
    def self.all
        @@all
    end
    def new_meal(customer,total,tip)
        Meal.new(self,customer,total,tip)
    end
    def meals
        Meal.all.select {|meal| meal.waiter == self}
    end
    def best_tipper
        best_tip = self.meals.inject do |memo,meal|
            meal.tip > memo.tip ? meal : memo
        end
        best_tip.customer
    end
end