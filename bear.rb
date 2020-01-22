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

  def take_fish_from(source)
    # Should check if the fish is nil before adding. don't want nil fish in the stomach
    fish = source.remove_fish
    # eat_fish(fish) if !fish.nil?
    eat_fish(fish) if fish
    # eat_fish(source.remove_fish)
  end

  def roar
    return "ROAR"
  end

  def poop
    @stomach.clear
  end

end
