class Navbarlink < ActiveRecord::Base
	attr_accessible :name, :position, :url

	validates :name, presence: true
	validates :position, presence: true
	validates :url, presence: true
end