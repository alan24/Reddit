class FrontpagesController < ApplicationController
	def index
		@frontpages = Frontpage.all.paginate(:page => params[:page], :per_page => 25).order("created_at ASC")
	end

	def new
		@frontpage = Frontpage.new
	end

	def create
		Frontpage.create(frontpage_params)
		redirect_to frontpages_path
	end

	private

	def frontpage_params
		params.require(:frontpage).permit(:title, :description)
	end 
end
