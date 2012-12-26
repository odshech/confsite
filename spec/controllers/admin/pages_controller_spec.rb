require 'spec_helper'

describe Admin::PagesController do
	
  before { @page = FactoryGirl.create(:page) }
  subject { @page }

  it "should show us all pages" do
 		get :index
 		response.should be_success 
  end

  it "should show us the page" do
 		get :show, :id => @page.id
 		response.should be_success 
  end

	it "should show form for new  page" do
 		get :new
 		response.should be_success 
  end  

	it "should create a new  page" do
   	post :create, :page => FactoryGirl.attributes_for(:page)
 		response.should redirect_to(admin_pages_path) 
  end  

	it "should show the edit page" do
 		get :edit, :id => @page.id
 		response.should be_success 
  end  

  it "should update a page" do
 		put :update, :id => @page.id, :page => FactoryGirl.attributes_for(:page, :text => 'texttetetette', :url => 'about')
 		response.should redirect_to(admin_pages_path)
  end  

  it "should delete a page" do
 		delete :destroy, :id => @page.id
 		response.should be_success 
  end  

end