class Api::V1::EventExercisesController < ApplicationController
  respond_to :json

  def index
    respond_with EventExercise.all
  end

  def show
    respond_with EventExercise.find(params[:id])
  end

  def create
    event_exercise = EventExercise.new(event_exercise_params)
    if event_exercise.save
      render json: event_exercise
    else
      render json: event_exercise, status: 422
    end
  end

  def update
    event_exercise = EventExercise.find(params[:id])
    if event_exercise.update(exercise_params)
      render json: event_exercise
    else
      render json: event_exercise, status: 422
    end
  end

  def destroy
    event_exercise = EventExercise.find(params[:id]).destroy
    respond_with :no_content
  end

  private

  def event_exercise_params
    params.require(:event_exercise).permit(:exercise_id, :exerciseable_id, :exerciseable_type)
  end
end