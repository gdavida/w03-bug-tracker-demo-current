# + name - string
# + location - string
# + description - string
# + researcher_id - integer

class Insect < ActiveRecord::Base
  
	validates :name, presence: true
	validates :location, presence: true
	validates :description, presence: true
	validates :researcher_id, presence: true, numericality: { only_integer: true }


  def researcher
    Researcher.find_by_id(researcher_id)
  end

  def papers
    Paper.where(insect_id: id)
  end
end
