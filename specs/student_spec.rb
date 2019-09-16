require("minitest/autorun")
require("minitest/rg")
require_relative("../student")

class TestStudentClass < MiniTest::Test

  def test_get_name__test_returns_mark
    codeclan_student = Student.new("Mark", "E34")
    assert_equal("Mark", codeclan_student.get_name())
  end

end
