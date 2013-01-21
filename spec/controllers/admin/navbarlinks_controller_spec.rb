require 'spec_helper'

describe Admin::NavbarlinksController do
	
  before do
    @navbarlink = FactoryGirl.create(:navbarlink)
    @admin = FactoryGirl.create(:admin)
    sign_in @admin
  end
  
  subject { @navbarlink }

  it "should show us all navbarlinks" do
 		get :index
 		response.should be_success 
  end

  it "should show us the navbarlink" do
 		get :show, :id => @navbarlink.id
 		response.should be_success 
  end

	it "should show form for new  navbarlink" do
 		get :new
 		response.should be_success 
  end  

	it "should create a new  navbarlink" do
   	post :create, :navbarlink => FactoryGirl.attributes_for(:navbarlink)
 		response.should redirect_to(admin_navbarlinks_path) 
  end  

	it "should show the edit navbarlink" do
 		get :edit, :id => @navbarlink.id
 		response.should be_success 
  end  

  it "should update a navbarlink" do
 		put :update, :id => @navbarlink.id, :navbarlink => FactoryGirl.attributes_for(:navbarlink, :url => '/about', :name => 'about', :position => '6')
 		response.should redirect_to(admin_navbarlinks_path)
  end  

  it "should delete a navbarlink" do
 		delete :destroy, :id => @navbarlink.id
 		response.should redirect_to(admin_navbarlinks_path) 
  end  

end