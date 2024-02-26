class ApplicationController < ActionController::Base
  include SessionsHelper

  rescue_from ActiveRecord::RecordNotFound, with: :handle_not_found

  private

  def handle_not_found
    render 'errors/not_found', status: 404
  end

  def logged_in_user
    unless logged_in?
      redirect_to login_path
    end
  end

  def logged_in_current_user
    unless current_user?(@user)
      redirect_to login_path
    end
  end
end
