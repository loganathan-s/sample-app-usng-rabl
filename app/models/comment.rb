class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :blog_entry
  attr_accessible :description, :user_id, :blog_entry_id
  validates :description,presence: true
end
