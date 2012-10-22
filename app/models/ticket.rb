class Ticket < ActiveRecord::Base
  belongs_to :projecs
  validates :title, :presence => true
  validates :description, :presence => true, :length => {:minimum => 10}
end
