class Admin::PagesController < AdminController
	before_filter :find_page_by_url

	def index
		 @pages = Page.all
	end

	def show
		@page = find_page_by_url
	end

	def new
		@page = Page.new
	end

	def create
		@page = Page.new(params[:page])
		if @page.save
			flash[:success] = "Your page has been created sucessfully!"
			redirect_to :action => "index"
		else
			render 'new'
		end
	end

	def edit
		@page = find_page_by_url
	end

	def update
		@page = find_page_by_url
		if @page.update_attributes(params[:page])
			flash[:success] = "Your page has been updated sucessfully!"
			redirect_to :action => "index"
		else
			render 'edit'
		end
	end

	def destroy
		@page = find_page_by_url
		@page.destroy
		flash[:success] = "Page destroyed."
		redirect_to :action => "index"
	end

	def find_page_by_url
		Page.find_by_url(params[:id])
	end
end