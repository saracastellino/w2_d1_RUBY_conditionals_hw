class RockClimber

  attr_reader :name, :team, :heights

  def initialize(name, team, heights=[])
    @name = name
    @team = team
    @heights = heights
  end

  def max_height(height)
    heights.max()
  end

  def add_new_height(new_height)
    heights.push(new_height)
  end

  def climb(more_metres)
    heights.map { |metres| metres += more_metres }
  end

end
