class ApplicationController < ActionController::Base
  protect_from_forgery


  private

  def current_user
     params[:token] ? User.find_by_token(params[:token]) : (session[:user_id] ? User.find_by_id(session[:user_id])  : nil)
  end
  
  helper_method :current_user

  def authorize
    if current_user.blank?
      respond_to do |format|
        flash[:notice] = "Login to add comments"
        format.html {redirect_to login_url}# index.html.erb
        format.json { render json: {message: "Not authorized" }}
        format.js { render js: "window.location.href = '#{login_url}'"}
      end
    end
  end

  def store_location
    session[:return_to] = request.url
  end
end
