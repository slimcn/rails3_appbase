class Sheet0 < ActiveRecord::Base
  acts_as_taggable
  acts_as_taggable_on :skills, :interests

  searchable do
    text :f1, :boost => 2.0
  end
end
