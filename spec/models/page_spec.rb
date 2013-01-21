require 'spec_helper'

describe Page do

	before do
		@page = FactoryGirl.build(:page)
	end

	subject { @page }

	it "page should be saved" do
		expect { @page.save }.to change { Page.count }.by(1)
	end

	it { should be_valid }

	it { should respond_to(:text) }
	it { should respond_to(:url) }


	describe "text should not be blank" do
		before { @page.text = ' ' }
		it { should_not be_valid }
	end

	describe "url should not be blank" do
		before { @page.url = ' ' }
		it { should_not be_valid }
	end

end