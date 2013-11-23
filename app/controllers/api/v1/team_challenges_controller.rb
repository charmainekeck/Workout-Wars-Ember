class Api::V1::TeamChallengesController < ApplicationController
  respond_to :json

  def index
    respond_with TeamChallenge.all
  end

  def show
    respond_with TeamChallenge.find(params[:id])
  end
end
