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

end
