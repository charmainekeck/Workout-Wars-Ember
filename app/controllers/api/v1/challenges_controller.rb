class Api::V1::ChallengesController < ApplicationController
  respond_to :json

  def index
    respond_with Challenge.all
  end

  def show
    respond_with Challenge.find(params[:id])
  end

  def update
    @challenge = Challenge.find(params[:id])

    if @challenge.update(challenge_params)
      respond_with :no_content
    else
      respond_with render json: @challenge.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @challenge = Challenge.find(params[:id]).destroy
    respond_with :no_content
  end

  private

  def challenge_params
    params.require(:challenge).permit(:name, :max_participants)
  end
end
