class FrontpagesController < ApplicationController
	before_action :authenticate_user!, :only => [:new, :create]

	def index
		@frontpages = Frontpage.all.paginate(:page => params[:page], :per_page => 25).order("created_at ASC")
	end

	def new
		@frontpage = Frontpage.new
	end

	def create
		current_user.frontpages.create(frontpage_params)
		redirect_to frontpages_path
	end

	def show
		@frontpage = Frontpage.find(params[:id])
	end

	def edit
		@frontpage = Frontpage.find(params[:id])
	end

	private

	def frontpage_params
		params.require(:frontpage).permit(:title, :description)
	end 
end
