class User

    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    # Returns all of the recipes this user has recipe cards for
    def recipes
        RecipeCard.all.select do |recipe_card|
            recipe_card.user == self
        end
    end

    # Accepts a recipe instance as an argument, as well as a date and rating, and create a new recipe card for this user and the given recipe
    def add_recipe_card(recipe, rating)
        
    end

end