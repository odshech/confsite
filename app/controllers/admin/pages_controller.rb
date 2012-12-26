class Admin::PagesController < ApplicationController

	def index
		 @pages = Page.all
	end	

  def show
  	@page = Page.find(params[:id])
  end

  def new
  	@page = Page.new	
  end	

	def create
    @page = Page.new(params[:page])
    if @page.save
			flash[:success] = "Your has been created sucessfully!"
      redirect_to :action => "index"
    else
      render 'new'
    end
  end	

  def edit
		@page = Page.find(params[:id])
  end

  def update
		@page = Page.find(params[:id])
    if @page.update_attributes(params[:page])
			flash[:success] = "Your page has been updated sucessfully!"
      redirect_to :action => "index"
    else
      render 'edit'
    end
  end	

  def destroy
  	Page.find(params[:id]).destroy
    flash[:success] = "Page destroyed."
    render 'index'
  end  

end