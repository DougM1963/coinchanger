require "minitest/autorun"
require_relative "coinchanger.rb"

class TestMeme < Minitest::Test
def test_cents_per_coin
    assert_equal(25, $coins["$quarter"])
    assert_equal(10, $coins["$dime"])
    assert_equal(5, $coins["$nickel"])
    assert_equal(1, $coins["$penny"])
end
end

