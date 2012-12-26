class Page < ActiveRecord::Base
  attr_accessible :text, :url

  validates :text, presence: true
  validates :url, presence: true
end
