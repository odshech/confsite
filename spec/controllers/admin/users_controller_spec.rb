require 'spec_helper'

describe Admin::UsersController do
	
  before { @user = FactoryGirl.create(:user) }
  subject { @user }

  it "should show all users" do
 		get :index
 		response.should be_success 
  end

end