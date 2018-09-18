class Bear

  attr_reader :name, :type, :stomach

  def initialize(name, type, stomach)
    @name = name
    @type = type
    @stomach = stomach
  end

  def take_fish_from_river(river, fishy)
    river.fish.delete(fishy)
    @stomach << fishy
  end

  def roar
    return "Roooaaarrr!"
  end

  def count_food
    return @stomach.length
  end

end
