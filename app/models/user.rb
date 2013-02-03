class User < ActiveRecord::Base
  attr_accessible :email, :password, :password_confirmation,:name
  has_secure_password
  validates :email,:token,:uniqueness => true
  has_many :comments,:dependent => :destroy
  has_many :blog_entries
  has_many :blog_categories

  before_save :generate_token
  

  def generate_token
    self.token = SecureRandom.hex(16)
  end

  def reset_token!
    self.token = SecureRandom.hex(16)
    self.save!
  end
end
