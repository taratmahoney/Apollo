class Option < ActiveRecord::Base
  acts_as_votable
  belongs_to :feedback

end
