class UsersController < ApplicationController
  def new
    @user = User.new
  end
  
	def create
    @user = User.new(params[:user])
    if @user.save
			flash[:success] = "Your registration completed sucessfully!"
      redirect_to :action => "new"
    else
      render 'new'
    end
  end
end