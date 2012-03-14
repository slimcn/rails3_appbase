class Sheet < ActiveRecord::Base
  attr_accessible :code, :name, :status, :comment, :attachments_attributes

  has_many :attachments, :as => :attachable

  accepts_nested_attributes_for :attachments
end
