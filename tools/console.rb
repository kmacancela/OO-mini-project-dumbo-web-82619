require_relative '../config/environment.rb'

u1 = User.new("Karina")
u2 = User.new("Chris")
u3 = User.new("Paul")
u4 = User.new("Jessie")

r1 = Recipe.new("Key Lime Pie")
r2 = Recipe.new("Brownies")
r3 = Recipe.new("Dutch Baby")
r4 = Recipe.new("Turkey Meatloaf")

rc1 = RecipeCard.new(r1, u1)
rc2 = RecipeCard.new(r2, u1)
rc3 = RecipeCard.new(r3, u3)
rc4 = RecipeCard.new(r4, u2)
rc5 = RecipeCard.new(r2, u4)

i1 = Ingredient.new("Carrot")
i2 = Ingredient.new("Lime")
i3 = Ingredient.new("Sugar")
i4 = Ingredient.new("Flour")
i5 = Ingredient.new("Vanilla Extract")

ri1 = RecipeIngredient.new(r1, i2)
ri2 = RecipeIngredient.new(r1, i3)
ri3 = RecipeIngredient.new(r2, i3)
ri4 = RecipeIngredient.new(r3, i3)
ri5 = RecipeIngredient.new(r4, i1)
ri6 = RecipeIngredient.new(r4, i3)
ri7 = RecipeIngredient.new(r3, i2)

a1 = Allergy.new(u1, i1)
a2 = Allergy.new(u2, i5)
a3 = Allergy.new(u2, i4)
a4 = Allergy.new(u4, i1)
a5 = Allergy.new(u3, i3)
a6 = Allergy.new(u1, i3)
a7 = Allergy.new(u2, i2)

many_i = [Ingredient.new("Brussel Sprouts"), Ingredient.new("Cheese"), Ingredient.new("Cream")]

binding.pry
0