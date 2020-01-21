class River
  def initialize(name, fishes)
    @name = name
    @fishes = fishes
  end

  def count_fishes
    return @fishes.length
  end
end
