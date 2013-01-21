require 'spec_helper'

describe Navbarlink do
	
	before do
		@navbarlink = FactoryGirl.build(:navbarlink)
	end

	subject { @navbarlink }

	it "navbarlink should be saved" do
		expect { @navbarlink.save }.to change { Navbarlink.count }.by(1)
	end

	it { should be_valid }

	it { should respond_to(:url) }
	it { should respond_to(:name) }
	it { should respond_to(:position) }

	describe "url should not be blank" do
		before { @navbarlink.url = ' ' }
		it { should_not be_valid }
	end


	describe "name should not be blank" do
		before { @navbarlink.name = ' ' }
		it { should_not be_valid }
	end

	describe "position should not be blank" do 
		before { @navbarlink.position = ' ' }
		it { should_not be_valid }
	end
end