
require_relative 'cookbook.rb'
  
mex_cuisine = Cookbook.new("Mexican Cooking")
puts mex_cuisine.title
 
burrito = Recipe.new('Bean Burrito',['tortilla','bean'],['heat beans','heat tortilla','place beans in tortilla','sprinkle cheese on top','roll up'])

puts burrito.title
p burrito.ingredients
p burrito.steps

mex_cuisine.title = "Mexican Recipes"
puts mex_cuisine.title

burrito.title="Veggie Burrito"
p burrito.title

burrito.ingredients = ['tortilla','tomatoes']
p burrito.ingredients

burrito.steps =['heat tomatoes','place tomatoes in tortilla','roll up']
p burrito.steps

mex_cuisine.recipes
mex_cuisine.add_recipe(burrito)
p mex_cuisine.recipes
puts burrito.print_recipe
burrito.process
