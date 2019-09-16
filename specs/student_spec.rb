require("minitest/autorun")
require("minitest/rg")
require_relative("../student")

class TestStudentClass < MiniTest::Test

  def test_get_name__test_returns_mark
    codeclan_student = Student.new("Mark", "E34")
    assert_equal("Mark", codeclan_student.get_name())
  end

  def test_get_cohort__test_returns_e34
    codeclan_student = Student.new("Mark", "E34")
    assert_equal("E34", codeclan_student.get_cohort())
  end

  def test_set_name__test_returns_gary
    codeclan_student = Student.new("Mark", "E34")
    codeclan_student.set_name("Gary")
    assert_equal("Gary", codeclan_student.get_name())
  end

  def test_set_cohort__test_returns_E33
    codeclan_student = Student.new("Mark", "E34")
    codeclan_student.set_cohort("E33")
    assert_equal("E33", codeclan_student.get_cohort())
  end

  def test_talk__returns_i_can_talk
    codeclan_student = Student.new("Mark", "E34")
    assert_equal("I can talk!", codeclan_student.talk())
  end

  def test_say_favourite_language__ruby_returns_i_love_ruby
    codeclan_student = Student.new("Mark", "E34")
    assert_equal("I love Ruby!", codeclan_student.say_favourite_language("Ruby"))
  end

end
