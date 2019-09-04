class Recipe

    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    # Returns an array of all recipe cards of a Recipe instance
    def recipe_cards
        RecipeCard.all.select do |recipe_card|
            recipe_card.recipe == self
        end
    end

    # Returns an array of hashes {Recipe => num of recipe cards for that recipe} for all Recipe instances from highest num of recipe cards to lowest.
    def self.num_recipe_cards_sort
        num_recipe_cards = self.all.map do |recipe|
            {recipe => recipe.recipe_cards.count}
        end
        sorted_num_recipe_cards = num_recipe_cards.sort_by do |recipe_card|
            recipe_card.values[0]
        end
        sorted_num_recipe_cards.reverse
    end

    # Returns the recipe instance with the highest number of users (the recipe that has the most recipe cards)
    def self.most_popular
        self.num_recipe_cards_sort[0].keys
    end

    # Returns the user instances who have recipe cards with this recipe
    def users
        self.recipe_cards.map do |recipe_card|
            recipe_card.user
        end
    end

    # Returns all the recipe ingredient of this Recipe instance
    def recipe_ingredients
        RecipeIngredient.all.select do |recipe_ingredient|
            recipe_ingredient.recipe == self
        end
    end

    # Returns all of the ingredients in this recipe
    def ingredients
        self.recipe_ingredients.map do |recipe_ingredient|
            recipe_ingredient.ingredient
        end
    end

    # Returns all the allergies for this Recipe instance.
    def allergies
        Allergy.all.select do |allergy|
            self.ingredients.include?(allergy.ingredient)
        end
    end

    # Returns all of the `Ingredient`s in this recipe that are allergens for `User`s in our system.
    def allergens
        allergy_ingredients = self.allergies.map do |allergy|
            allergy.ingredient
        end
        allergy_ingredients.uniq
    end

    # Takes an array of ingredient instances as an argument, and associate each of those ingredients with this recipe
    def add_ingredients(ingredients)
        ingredients.each do |ingredient|
            RecipeIngredient.new(self, ingredient)
        end
    end

end