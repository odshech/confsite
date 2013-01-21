require 'spec_helper'

describe Admin do

	before { @admin = FactoryGirl.build(:admin) }

	subject { @admin }

	it "admin should be saved" do
		expect { @admin.save }.to change { Admin.count }.by(1)
	end

	it { should be_valid }

	it { should respond_to(:first_name) }
	it { should respond_to(:last_name) }

	describe "first name is missing" do
		before { @admin.first_name = " " }
		it { should_not be_valid }
	end

	describe "last name is missing" do
		before { @admin.last_name = " " }
		it { should_not be_valid }
	end

end