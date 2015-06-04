class ActivityTypesController < ApplicationController
  
  before_action :set_activity_type, only: [:show, :edit, :update, :destroy]

  before_filter :authenticate_user!
  #after_action :verify_authorized

  respond_to :html

  def index
    @activity_types = ActivityType.all
    respond_with(@activity_types)
  end

  def show
    respond_with(@activity_type)
  end

  def new
    @activity_type = ActivityType.new
    respond_with(@activity_type)
  end

  def edit
  end


  def create
    @activity_type = ActivityType.new(activity_type_params)
    # #005 - replaced this 2 line block
    #    flash[:notice] = 'ActivityType was successfully created.' if @activity_type.save
    #    respond_with(@activity_type)
    # with this block:
    respond_to do |format|
      if @activity_type.save
        format.html { redirect_to activity_types_url, notice: 'ActivityType was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
  end

  def update
    # #005 - replaced this 2 line block
    #  flash[:notice] = 'ActivityType was successfully updated.' if @activity_type.update(activity_type_params)
    #  respond_with(@activity_type)
    # with this block:
    respond_to do |format|
      if @activity_type.update(activity_type_params)
        format.html { redirect_to activity_types_url, notice: 'ActivityType was successfully updated.' }
      else
        format.html { render action: "new" }
      end
    end
  end

  def destroy
    @activity_type.destroy
    respond_with(@activity_type)
  end

  private
    def set_activity_type
      @activity_type = ActivityType.find(params[:id])
    end

    def activity_type_params
      params.require(:activity_type).permit(:name)
    end
end
