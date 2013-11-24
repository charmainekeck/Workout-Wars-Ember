class Api::V1::TeamChallengesController < ApplicationController
  respond_to :json

  def index
    respond_with TeamChallenge.all
  end

  def show
    respond_with TeamChallenge.find(params[:id])
  end

  def create
    team_challenge = TeamChallenge.new(team_challenge_params)
    if team_challenge.save
      render json: team_challenge
    else
      render json: team_challenge, status: 422
    end
  end

  def update
    team_challenge = TeamChallenge.find(params[:id])
    if team_challenge.update(team_challenge_params)
      render json: team_challenge
    else
      render json: team_challenge, status: 422
    end
  end

  def destroy
    @team_challenge = TeamChallenge.find(params[:id]).destroy
    respond_with :no_content
  end

  private

  def team_challenge_params
    params.require(:team_challenge).permit(:name, :max_participants)
  end
end
