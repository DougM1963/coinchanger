require "minitest/autorun"
require_relative "coinchanger.rb"

class TestMeme < Minitest::Test

def test_change_for_99_cents_equals_3_quarters_2_dimes_and_4_pennies
	get_change(99)
    assert_equal(3, $coins_returned["quarter"])
    assert_equal(2, $coins_returned["dime"])
    assert_equal(0, $coins_returned["nickel"])
    assert_equal(4, $coins_returned["penny"])
end

def test_change_for_93_cents_equals_3_quarters_1_dime_1_nickel_3_pennies
	get_change(93)
    assert_equal(3, $coins_returned["quarter"])
    assert_equal(1, $coins_returned["dime"])
    assert_equal(1, $coins_returned["nickel"])
    assert_equal(3, $coins_returned["penny"])
end


end

