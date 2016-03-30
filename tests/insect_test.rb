require "test_helper"
require_relative "../lib/insect.rb"

class InsectTest < Minitest::Test

  def test_should_be_creatable_under_normal_circumstances

    insect = Insect.new(name: "Fuzzy Mantis", description: "Fuzzy and mantis-y", location: "In my shoes", researcher_id: nil)
    refute_nil(insect)
  end
  
#---------------------------------------------------------


  def test_validator_should_fail_with_no_name
    i = Insect.new(name: "Davida", description: "descr", location: "shoes", researcher_id: 1)
    assert(i.valid?, "Should be valid at creation")

    i.name = ""
    refute(i.valid?, "Should be invalid with an empty name")

    i.name = nil
    refute(i.valid?, "Should be invalid without a name")
  end

  #######-

  def test_validator_should_fail_with_no_location
    i = Insect.new(name: "name", description: "descr", location: "shoes", researcher_id: 2)
    assert(i.valid?, "Should be valid at creation")

    i.location = nil
    refute(i.valid?, "Should be invalid without a location")

    i.location = ""
    refute(i.valid?, "Should be invalid with an empty location")
  end

  #######-

  def test_validator_should_fail_with_no_description
    i = Insect.new(name: "name", description: "descr", location: "shoes", researcher_id: 2)
    assert(i.valid?, "Should be valid at creation")

    i.description = nil
    refute(i.valid?, "Should be invalid without a description")

    i.description = ""
    refute(i.valid?, "Should be invalid with an empty description")
  end

  #######-

  def test_validator_should_fail_with_no_researcher_id
    i = Insect.new(name: "name", description: "descr", location: "shoes", researcher_id: 2)
    assert(i.valid?, "Should be valid at creation")

    i.researcher_id = nil
    refute(i.valid?, "Should be invalid without a researcher_id")

    i.researcher_id = ""
    refute(i.valid?, "Should be invalid with an empty researcher_id")
  end

  

end

