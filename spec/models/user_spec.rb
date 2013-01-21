require 'spec_helper'

describe User do

	before { @user = FactoryGirl.build(:user) }

	subject { @user }

	it "user should be saved" do
		expect { @user.save }.to change { User.count }.by(1)
	end

	it { should be_valid }

	it { should respond_to(:first_name) }
	it { should respond_to(:last_name) }
	it { should respond_to(:email) }
	it { should respond_to(:organisation) }
	it { should respond_to(:phone_number) }
	it { should respond_to(:role_title) }

	describe "first name is missing" do
		before { @user.first_name = " "}
		it { should_not be_valid }
	end

	describe "last name is missing" do
		before { @user.last_name = " "}
		it { should_not be_valid }
	end

	describe "email is missing" do
		before { @user.email = " "}
		it { should_not be_valid }
	end

	describe "organisation is missing" do
		before { @user.organisation = " "}
		it { should_not be_valid }
	end

	describe "phone number is missing" do
		before { @user.phone_number = " "}
		it { should_not be_valid }
	end

	describe "role title is missing" do
		before { @user.role_title = " "}
		it { should_not be_valid }
	end			
end