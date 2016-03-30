# Researchers are just grad students
# + name: string (this is the name of our grad student peons)
# + age: integer (this is how old they are)

class Researcher < ActiveRecord::Base

  validates :name, presence: true
  validates :age, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 18}

  has_many :insects

  def papers
    Paper.where(researcher_id: id)
  end

end
