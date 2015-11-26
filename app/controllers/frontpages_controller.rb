class FrontpagesController < ApplicationController
  before_action :authenticate_user!, :only => [:new, :create, :edit, :update, :destroy]

  def index
    @frontpages = Frontpage.all.paginate(:page => params[:page], :per_page => 25).order("created_at ASC")
  end

  def new
    @frontpage = Frontpage.new
  end

  def create
    @frontpage = current_user.frontpages.create(frontpage_params)
    if @frontpage.valid?
    	redirect_to frontpages_path
    else
    	render :new, :status => :unprocessable_entity
    end
  end

  def show
    @frontpage = Frontpage.find(params[:id])
  end

  def edit
    @frontpage = Frontpage.find(params[:id])
    if @frontpage.user != current_user
    	render :text => 'Not allowed', :status => :unauthorized
    end
  end

  def update
    @frontpage = Frontpage.find(params[:id])
    if @frontpage.user != current_user
    	render :text => 'Not allowed', :status => :unauthorized
    end
    @frontpage.update_attributes(frontpage_params)
    if @frontpage.valid?
      redirect_to frontpages_path
    else
      render :edit, :status => :unprocessable_entity
    end
  end

  def destroy
    @frontpage = Frontpage.find(params[:id])
    if @frontpage.user != current_user
    	render :text => 'Not allowed', :status => :unauthorized
    end
    @frontpage.destroy
    redirect_to frontpage_path
  end

  private

  def frontpage_params
    params.require(:frontpage).permit(:title, :description)
  end
end
