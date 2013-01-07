class Page < ActiveRecord::Base
  attr_accessible :text, :url
	
  before_save { |page| page.url = page.url.downcase.gsub('/','').gsub(' ','').gsub('\\','')   }

  validates :text, presence: true
  validates :url, presence: true


  def to_param
    "#{url.parameterize}"
  end
end
