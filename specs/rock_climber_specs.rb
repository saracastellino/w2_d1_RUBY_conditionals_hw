require('minitest/autorun')
require('minitest/reporters')
require_relative('../rock_climber')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestRockClimber < MiniTest::Test

  def setup
    @rock_climber = RockClimber.new("Joe", "The Monkeys", [340, 18, 97.8])

  end

  def test_rock_climber_name()
    assert_equal("Joe", @rock_climber.name)
  end

  def test_rock_climber_team()
    rock_climber2 = RockClimber.new("Harry", "The Bats", [47, 8.5])
    assert_equal("The Bats", rock_climber2.team)
  end

  def test_rock_climber_heights()
    rock_climber3 = RockClimber.new("Sylvia", "The Eagles", [58, 37, 29, 300])
    assert_equal([58, 37, 29, 300], rock_climber3.heights)
  end

  def test_max_height()
    result = @rock_climber.max_height(340)
    assert_equal(340, result)
  end

  def test_add_new_height()
    result = @rock_climber.add_new_height(20)
    assert_equal(4, result.count)
  end

  def test_climb()
    result = @rock_climber.climb(10)
    assert_equal([350, 28, 107.8], result)
  end

  def test

  end
end
