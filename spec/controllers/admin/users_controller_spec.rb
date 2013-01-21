require 'spec_helper'

describe Admin::UsersController do
	
	before do
		@user = FactoryGirl.create(:user)
		@admin = FactoryGirl.create(:admin)
		sign_in @admin
	end

	subject { @user }

	it "should show all users" do
		get :index
		response.should be_success 
	end

end