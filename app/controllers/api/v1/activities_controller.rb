class Api::V1::ActivitiesController < ApplicationController
  respond_to :json

  def index
    respond_with Activity.all 
  end

  def show
    respond_with Activity.find(params[:id])
  end

  def create
    activity = Activity.new(activity_params)
    if activity.save
      render json: activity
    else
      render json: activity, status: 422
    end
  end

  def update
    activity = Activity.find(params[:id])
    if activity.update(activity_params)
      render json: activity
    else
      render json: activity, status: 422
    end
  end

  def destroy
    activity = Activity.find(params[:id]).destroy
    respond_with :no_content
  end

  private

  def activity_params
    params.require(:activity).permit(:reps, :weight, :distance, :duration, :calories)
  end
end
