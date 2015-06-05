class ActivitiesController < ApplicationController
  

  before_action :set_activity, only: [:show, :edit, :update, :destroy]

  before_filter :authenticate_user!
  #after_action :verify_authorized

  respond_to :html

  def index
    
    # change #00441 - line was: @activities = Activity.all
    # #00443 - following IF block  gave an error afetr install of activeadmin
    # Therefore always show for current user (else command)
    #   if env['warden'].user.role == 'admin'
    #     @activities = Activity.all
    #   else
    #     @activities = current_user.activities.all
    #   end
    @activities = current_user.activities.all
    respond_with(@activities)
  end

  def show
    respond_with(@activity)
  end

  def new
    # change #00441 - line was: @activity = Activity.new
    @activity = current_user.activities.build
    # change #00441 - added line to set deafult value of Activity_Type to be "User Defined"
    @activity.activity_type_id = "2" # set a default value to be "UserDefined" (=2 in susie_development db)
    @activity.parent_id = "1" # set a default value to be "Root" (=1 in susie_development db)
    respond_with(@activity)
  end

  def edit
  end

  def create
    # change #00441 - line was: @activity = Activity.new(activity_params)
    @activity = current_user.activities.build(activity_params)
    # #005 - replaced this 2 line block
    #    @activity.save
    #    respond_with(@activity)
    # with this block:
    respond_to do |format|
      if @activity.save
        format.html { redirect_to activities_url, notice: 'Activity was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
  end


  def update
    @activity.update(activity_params)
    # #005 - replaced this 1 line block
    #    respond_with(@activity)
    # with this block:
    respond_to do |format|
      if @activity.update(activity_params)
        format.html { redirect_to activities_url, notice: 'Activity was successfully updated.' }
      else
        format.html { render action: "new" }
      end
    end
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
      # change #00441 - added :user_id to next line
      params.require(:activity).permit(:name, :activity_type_id, :parent_id, :user_id)
    end
end
