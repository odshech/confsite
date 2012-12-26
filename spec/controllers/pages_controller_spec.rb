require 'spec_helper'

describe PagesController do
	
  before { @page = FactoryGirl.create(:page) }
  subject { @page }

  it "should show us the page" do
 		get :show, :id => @page.id
 		response.should be_success 
  end

end