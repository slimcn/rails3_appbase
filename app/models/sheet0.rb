class Sheet0 < ActiveRecord::Base
  acts_as_taggable
  acts_as_taggable_on :skills, :interests
end
