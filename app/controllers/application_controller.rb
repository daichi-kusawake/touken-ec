class ApplicationController < ActionController::Base
  include SessionsHelper

  rescue_from ActiveRecord::RecordNotFound, with: :handle_not_found

  private

  def handle_not_found
    render 'errors/not_found', status: :not_found
  end

  def logged_in_user
    return if logged_in?

    redirect_to login_path
  end

  def logged_in_current_user
    return if current_user?(@user)

    redirect_to login_path
  end
end
