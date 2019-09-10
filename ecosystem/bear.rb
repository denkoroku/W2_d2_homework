class Bear

  attr_accessor :name, :stomach

  def initialize (name, stomach=[])
    @name = name
    @stomach = stomach
  end

  def eat_fish(river_name, fish_name)
    #takes fish out of river
    river_name.no_of_fish -=1
    #adds fish to stomach
    @stomach.push(fish_name)
  end

  def roar
    return "raaaaarh"
  end

  def food_count
    return @stomach.count
  end
end
