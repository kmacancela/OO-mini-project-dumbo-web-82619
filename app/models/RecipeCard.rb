class RecipeCard

    attr_reader :recipe, :user
    @@all = []

    def initialize(recipe, user, rating)
        @recipe = recipe
        @user = user
        @date = "#{Time.now.year}-#{Time.now.month}-#{Time.now.day}"
        @rating = rating
        @@all << self
    end

    def self.all
        @@all
    end

end