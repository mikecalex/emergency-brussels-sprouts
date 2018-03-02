
class Container
  attr_reader :weight, :maximum_holding_weight
  attr_accessor :ingredients

  def initialize(weight, maximum_holding_weight)
    @weight = weight
    @maximum_holding_weight = maximum_holding_weight
    @ingredients = []
  end

  def fill_with_ingredient(ingredient)
    number_of_ing = @maximum_holding_weight / ingredient.weight
    number_of_ing.to_i.times { @ingredients << ingredient }
    @weight += number_of_ing * ingredient.weight
    which_ingredient
  end

  def which_ingredient
    @ingredients[0].name
  end

  def how_many_ingredients
    @ingredients.length
  end

  def remove_one_ingredient
    @ingredients.pop
  end

  def empty
    @ingredients.clear
  end

end
