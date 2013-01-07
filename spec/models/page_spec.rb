require 'spec_helper'

describe Page do

	before do
		@page = FactoryGirl.build(:page)
	end

	subject { @page }

	it "page should be saved" do
		expect { @page.save }.to change { Page.count }.by(1)
	end

	it "text should not be blank" do 
		@page.text = ''
		@page.save
		@page.should_not be_valid
	end

	it "url should not be blank" do 
		@page.url = ''
		@page.save
		@page.should_not be_valid
	end
end