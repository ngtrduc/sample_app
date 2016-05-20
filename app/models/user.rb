class User < ActiveRecord::Base
	before_save { self.email = email.downcase }
	EMAIL_FORMAT_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :user_name, presence: true, length: {minimum: 6}, uniqueness: {case_sensitive: false}
	validates :name, presence: true, length: { maximum: 50 }
	validates :email, presence: true, length: { maximum: 255 }, format: {with: EMAIL_FORMAT_REGEX}, uniqueness: {case_sensitive: false}
	has_secure_password
	validates :password, length: {minimum: 6}
end
