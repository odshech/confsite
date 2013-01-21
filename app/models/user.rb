class User < ActiveRecord::Base
	attr_accessible :email, :first_name, :last_name, :organisation, :phone_number, :role_title

	before_save { |user| user.email = email.downcase.strip }

	validates :email, presence: true
	validates :first_name, presence: true
	validates :last_name, presence: true
	validates :organisation, presence: true
	validates :phone_number, presence: true
	validates :role_title, presence: true
end
