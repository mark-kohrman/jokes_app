class ApplicationController < ActionController::Base
  # protect_from_forgery with: :null_session
  def index
    render :file => "public/index.html"
  end
end
