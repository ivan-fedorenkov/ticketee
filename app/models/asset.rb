class Asset < ActiveRecord::Base
  belongs_to :ticket
  has_attached_file :asset, 
      :path => ":rails_root/files/:filename",
      :url => "/files/:filename"
end
