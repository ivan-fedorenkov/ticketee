class Ticket < ActiveRecord::Base
  validates :title, :presence => true
  validates :description, :presence => true, :length => {:minimum => 10}
  
  belongs_to :project
  belongs_to :user
  belongs_to :state

  has_many :assets
  accepts_nested_attributes_for :assets
  has_many :comments
end
