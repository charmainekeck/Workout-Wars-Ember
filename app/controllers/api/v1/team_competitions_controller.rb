class Api::V1::TeamCompetitionsController < ApplicationController
  respond_to :json

  def index
    respond_with TeamCompetition.all
  end

  def show
    respond_with TeamCompetition.find(params[:id])
  end

  def update
    @team_competition = TeamCompetition.find(params[:id])

    if @team_competition.update(team_competition_params)
      respond_with :no_content
    else
      respond_with render json: @team_competition.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @team_competition = TeamCompetition.find(params[:id]).destroy
    respond_with :no_content
  end

  private

  def team_competition_params
    params.require(:team_competition).permit(:name, :max_participants)
  end
end
