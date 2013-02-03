class BlogEntry < ActiveRecord::Base
  belongs_to :user
  attr_accessible :content, :title, :user_id,:blog_category_ids,:comments_attributes
  has_and_belongs_to_many :blog_categories
  has_many :comments,:dependent => :destroy
  accepts_nested_attributes_for :comments,:allow_destroy => true
end
