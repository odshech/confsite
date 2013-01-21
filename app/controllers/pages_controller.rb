class PagesController < FrontController
	def show
		@page = Page.find_by_url(params[:id])
	end
end
