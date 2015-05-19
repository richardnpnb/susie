class ActivitiesController < ApplicationController
  before_action :set_activity, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    # chnage #002 - line was: 
    if env['warden'].user.role == 'admin'
      @activities = Activity.all
    else
      @activities = current_user.activities.all
    end
    respond_with(@activities)
  end

  def show
    respond_with(@activity)
  end

  def new
    # chnage #002 - line was: @activity = Activity.new
    @activity = current_user.activities.build
    respond_with(@activity)
  end

  def edit
  end

  def create
    # chnage #002 - line was: @activity = Activity.new(activity_params)
    @activity = current_user.activities.build(activity_params)
    flash[:notice] = 'Activity was successfully created.' if @activity.save
    respond_with(@activity)
  end

  def update
    flash[:notice] = 'Activity was successfully updated.' if @activity.update(activity_params)
    respond_with(@activity)
  end

  def destroy
    @activity.destroy
    respond_with(@activity)
  end

  private
    def set_activity
      @activity = Activity.find(params[:id])
    end

    def activity_params
      params.require(:activity).permit(:activity_name)
    end
end
