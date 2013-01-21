class Admin::NavbarlinksController < AdminController

	def index
		@navbarlinks = Navbarlink.all
	end

	def show
		@navbarlink = Navbarlink.find(params[:id])
	end

	def new
		@navbarlink = Navbarlink.new
	end

	def create
		@navbarlink = Navbarlink.new(params[:navbarlink])
		if @navbarlink.save
			flash[:success] = "Your Link has been created sucessfully!"
			redirect_to :action => "index"
		else
			render 'new'
		end
	end

	def edit
		@navbarlink = Navbarlink.find(params[:id])
	end

	def update
		@navbarlink = Navbarlink.find(params[:id])
		if @navbarlink.update_attributes(params[:navbarlink])
			flash[:success] = "Your Link has been updated sucessfully!"
			redirect_to :action => "index"
		else
			render 'edit'
		end
	end	

	def destroy
		@navbarlink = Navbarlink.find(params[:id]).destroy
		flash[:success] = "Link destroyed."
		redirect_to :action => "index"
	end
end