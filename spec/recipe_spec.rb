require('spec_helper')

describe(Recipe) do

  describe("#ingredients") do
    it("tells which ingredients are used in it") do
      test_recipe = Recipe.create({:name => "recipe"})
      test_ingredient1 = Ingredient.create({:name => "ingredient1", :id => test_recipe.id})
      #test_ingredient2 = Ingredient.create({:name => "ingredient2", :id => test_recipe.id})
    expect(test_recipe.ingredients()).to(eq([test_ingredient1]))
    end
  end
end
