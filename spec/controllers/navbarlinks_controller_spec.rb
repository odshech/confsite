require 'spec_helper'

describe NavbarlinksController do
	
  before { @navbarlink = FactoryGirl.create(:navbarlink) }
  subject { @navbarlink }

  it "should show us the navbarlink" do
 		get :show, :id => @navbarlink.id
 		response.should be_success 
  end

  it "should show all navbarlinks" do
 		get :index
 		response.should be_success 
  end
end