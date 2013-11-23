class Api::V1::CompetitionsController < ApplicationController
  respond_to :json

  def index
    respond_with Competition.all
  end

  def show
    respond_with Competition.find(params[:id])
  end

  def create
    @competition = Competition.new(competition_params)

    if @competition.save
      respond_with :no_content
    else
      respond_with render json: @competition.errors, status: :unprocessable_entity
    end
  end

  def update
    @competition = Competition.find(params[:id])

    if @competition.update(competition_params)
      respond_with :no_content
    else
      respond_with render json: @competition.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @competition = Competition.find(params[:id]).destroy
    respond_with :no_content
  end

  private

  def competition_params
    params.require(:competition).permit(:name, :max_participants, :start_date, :end_date)
  end
end
