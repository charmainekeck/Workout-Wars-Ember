class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session

  before_filter :authenticate_user!, unless: :inside_static_site

  def inside_static_site
    params[:controller] == "static"
  end

  def after_sign_in_path_for(user)
    root_path
  end

  def after_sign_out_path_for(user)
    new_user_session_path
  end

end
