class EmberController < ApplicationController
  def start
    unless user_signed_in?
      redirect_to controller: 'static', action: 'index'
    end
  end
end
