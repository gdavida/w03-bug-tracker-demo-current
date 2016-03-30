require "test_helper"
require_relative "../lib/insect.rb"

class InsectTest < Minitest::Test

  def test_should_be_creatable_under_normal_circumstances
    insect = Insect.new(name: "Fuzzy Mantis", description: "Fuzzy and mantis-y", location: "In my shoes")
    refute_nil(insect)
  end

  def test_has_a_name
    insect = Insect.new(name: "Fuzzy Mantis", description: "Fuzzy and mantis-y", location: "In my shoes")
    insect.name = "Giant Gadfly"
    assert_equal("Giant Gadfly", insect.name)
  end

  def test_has_a_description
    insect = Insect.new(name: "Fuzzy Mantis", description: "Fuzzy and mantis-y", location: "In my shoes")
    insect.description = "Pretty friendly, but sort of scary looking."
    assert_equal("Pretty friendly, but sort of scary looking.", insect.description)
  end

  def test_has_a_location
    insect = Insect.new(name: "Fuzzy Mantis", description: "Fuzzy and mantis-y", location: "In my shoes")
    insect.location = "Chilling on a sweet rock"
    assert_equal("Chilling on a sweet rock", insect.location)
  end

end
