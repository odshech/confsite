require 'spec_helper'

describe Navbarlink do
  
	before do
		@navbarlink = FactoryGirl.build(:navbarlink)
	end

	subject { @navbarlink }

	it "navbarlink should be saved" do
		expect { @navbarlink.save }.to change { Navbarlink.count }.by(1)
	end

	it "url should not be blank" do 
		@navbarlink.url = ''
		@navbarlink.save
		@navbarlink.should_not be_valid
	end

	it "name should not be blank" do 
		@navbarlink.name = ''
		@navbarlink.save
		@navbarlink.should_not be_valid
	end

	it "position should not be blank" do 
		@navbarlink.position = nil
		@navbarlink.save
		@navbarlink.should_not be_valid
	end
end
