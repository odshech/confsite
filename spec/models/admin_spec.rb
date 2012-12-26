require 'spec_helper'

describe Admin do

	before do
		@admin = FactoryGirl.build(:admin)
	end

	subject { @admin }

	it "admin should be saved" do
		expect { @admin.save }.to change { Admin.count }.by(1)
	end

	it "first name should not be blank" do 
		@admin.first_name = ''
		@admin.save
		@admin.should_not be_valid
	end

	it "last name should not be blank" do 
		@admin.last_name = ''
		@admin.save
		@admin.should_not be_valid
	end
end
