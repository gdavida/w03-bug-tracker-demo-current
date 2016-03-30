require "test_helper"
require_relative "../lib/researcher.rb"

class ResearcherTest < Minitest::Test


  
  #######-

  def test_validator_should_fail_with_no_name
    r = Researcher.new(name: "Davida", age: 33)
    assert(r.valid?, "Should be valid at creation")

    r.name = nil
    refute(r.valid?, "Should be invalid without a name")

    r.name = ""
    refute(r.valid?, "Should be invalid with an empty name")
  end
  
  
  #######-

  def test_validator_should_fail_with_no_age
    r = Researcher.new(name: "Davida", age: 33)
    assert(r.valid?, "Should be valid at creation")

    r.age = nil
    refute(r.valid?, "Should be invalid without a age")

    r.age = ""
    refute(r.valid?, "Should be invalid with an empty age")

    r.age = 17
    refute(r.valid?, "Should be invalid with an age less than 18")
  end

end
