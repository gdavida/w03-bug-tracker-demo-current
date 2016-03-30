# + author (researcher)
# + title (string)
# + insect it's about (insect)
# + abstract (text)

class Paper < ActiveRecord::Base

belongs_to :insect
belongs_to :researcher

end
