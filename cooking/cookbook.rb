


class Cookbook
  attr_accessor :title
  attr_reader :recipes
  
  def initialize(title)
    @title = title
    @recipes =[]
  end
  
  def add_recipe(recipe)
    @recipes.push(recipe)
    puts "added a recipe to the collection: #{recipe.title}"
  end 
  
  def recipe_titles(this)
    "#{this.title}"
  end
  
  def recipe_ingredients(this)
    burrito_ingredients = ['tortilla','beans']
    "These are the ingredients for #{this.title}: #{burrito_ingredients}"
  end
    
  end
class Recipe
   attr_accessor :ingredients
   attr_reader :title
   attr_writer :steps
  def initialize(title,ingredients,steps)
    @title=title
    @ingredients=ingredients
    @steps=steps
  end
  
  def print_recipe
    "TITLE: #{self.title}. INGREDIENTS: #{self.ingredients}. STEPS: #{self.steps}"
  end
  
  def process
    @steps.each_with_index do |a,b|
    puts  "#{b+1}: #{a}"
    end
  end
  
  def title= (value)
    @title = value
  end
  
  def steps
    @steps
  end
  
end

