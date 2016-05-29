require "test/unit"
require "./lib/monopoly"


class TestDraw < Test::Unit::TestCase

  def test_draw
    Board.new.draw
  end

end