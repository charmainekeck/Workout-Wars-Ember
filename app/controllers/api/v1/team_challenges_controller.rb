class Api::V1::TeamChallengesController < ApplicationController
  respond_to :json

  def index
    respond_with TeamChallenge.all
  end

  def show
    respond_with TeamChallenge.find(params[:id])
  end

  def update
    @team_challenge = TeamChallenge.find(params[:id])

    if @team_challenge.update(team_challenge_params)
      respond_with :no_content
    else
      respond_with render json: @team_challenge.errors, status: :unprocessable_entity
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
