require 'minitest/autorun'
require 'minitest/pride'
require './multilinguist.rb'

class TestMultilinguist < MiniTest::Test
  def test_language_in_correct_language
    person = Multilinguist.new
    result = person.language_in('Mexico')
    expected = 'es'
    assert_equal(expected, result)
  end

  def test_language_in_incorrect_language
    person = Multilinguist.new
    result = person.language_in('Mexico')
    expected = 'en'
    refute_equal(expected, result)
  end

end
