require 'spec_helper'

describe User do

	before do
		@user = FactoryGirl.build(:user)
	end

	subject { @user }

	it "user should be saved" do
		expect { @user.save }.to change { User.count }.by(1)
	end

	it "first name should not be blank" do 
		@user.first_name = ''
		@user.save
		@user.should_not be_valid
	end

	it "last name should not be blank" do 
		@user.last_name = ''
		@user.save
		@user.should_not be_valid
	end

	it "email should not be blank" do 
		@user.email = ''
		@user.save
		@user.should_not be_valid
	end

	it "organisation should not be blank" do 
		@user.organisation = ''
		@user.save
		@user.should_not be_valid
	end

	it "phone_number should not be blank" do 
		@user.phone_number = ''
		@user.save
		@user.should_not be_valid
	end

	it "role_title should not be blank" do 
		@user.role_title = ''
		@user.save
		@user.should_not be_valid
	end

end