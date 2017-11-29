require 'test/unit'
require_relative '../cell.rb'

class CellTest < Test::Unit::TestCase
  def setup
    @cell = Cell.new(1, 1)
  end

  def test_assign_coverage_to_cell
    @cell.assign_coverage_to_cell(3.0)
    assert_equal(0.25, @cell.coverage, 'incorrect coverage assignment')
    assert_equal(:medium, @cell.coverage_category, 'Incorrect coverage category')
  end

  def test_to_s
    assert_equal("(1,1)", @cell.to_s, 'Incorrect to_s method')
  end
end