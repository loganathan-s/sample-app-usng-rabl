class BlogCategory < ActiveRecord::Base
  belongs_to :user
  has_and_belongs_to_many :blog_entries
  
  attr_accessible :description, :name,:user_id
end
