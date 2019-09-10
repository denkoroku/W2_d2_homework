class River

  attr_accessor :name, :no_of_fish

  def initialize(name, no_of_fish)
    @name = name
    @no_of_fish = no_of_fish
  end

  def count_fish
    return no_of_fish
  end
end
