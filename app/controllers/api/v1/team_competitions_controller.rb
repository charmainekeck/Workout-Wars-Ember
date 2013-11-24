class Api::V1::TeamCompetitionsController < ApplicationController
  respond_to :json

  def index
    respond_with TeamCompetition.all
  end

  def show
    respond_with TeamCompetition.find(params[:id])
  end

  def create
    team_competition = TeamCompetition.new(team_competition_params)
    if team_competition.save
      render json: team_competition
    else
      render json: team_competition, status: 422
    end
  end

  def update
    team_competition = TeamCompetition.find(params[:id])
    if team_competition.update(team_competition_params)
      render json: team_competition
    else
      render json: team_competition, status: 422
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
