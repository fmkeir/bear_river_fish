class Bear
  def initialize(name, type)
    @name = name
    @type = type
    @stomach = []
  end

  def count_food_in_stomach
    return @stomach.length
  end

  def eat_fish(fish)
    @stomach.push(fish)
  end
end
