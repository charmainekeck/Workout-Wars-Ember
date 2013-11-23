class Api::V1::TeamCompetitionsController < ApplicationController
  respond_to :json

  def index
    respond_with TeamCompetition.all
  end

  def show
    respond_with TeamCompetition.find(params[:id])
  end
end
