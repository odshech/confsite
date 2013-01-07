class FrontController < ApplicationController
	before_filter :find_navbarlinks

	layout "front"

	private

	def find_navbarlinks
		@navbarlinks = Navbarlink.order('position DESC')
	end
end
