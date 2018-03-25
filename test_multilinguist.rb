require 'minitest/autorun'
require 'minitest/pride'
require './multilinguist.rb'

class TestMultilinguist < MiniTest::Test

  def test_language_in_valid_en_country
    country = Multilinguist.new()

    # act
    expected = 'en'
    actual = country.language_in('Canada')

    # assert
    assert_equal(expected, actual)

  end

  def test_language_in_invalid_en_country
    country = Multilinguist.new()

    # act
    expected = 'en'
    actual = country.language_in('China')

    # assert
    refute_equal(expected, actual)

  end

end
