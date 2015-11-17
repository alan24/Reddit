class FrontpagesController < ApplicationController
	def index
		@frontpages = Frontpage.all.paginate(:page => params[:page], :per_page => 25).order("created_at ASC")
	end

	def new
		@frontpage = Frontpage.new
	end
end
