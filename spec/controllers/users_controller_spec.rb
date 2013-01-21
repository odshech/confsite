require 'spec_helper'

describe UsersController do
  before { @user = FactoryGirl.create(:user) }
  subject { @user }

  it "should show a new form for registeration" do
    get :new
    response.should be_success
  end
end