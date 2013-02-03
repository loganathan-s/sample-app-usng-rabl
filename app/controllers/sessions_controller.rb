class SessionsController < ApplicationController
  def new
  end
  
  def create
    user = User.find_by_email(params[:email])
    respond_to do |format|
      if user && user.authenticate(params[:password])
        session[:user_id] = user.id
        format.html {redirect_to (session[:return_to] || root_url) , notice: "Logged in!"}
        format.json { render json: {token: user.token} }
      else
        flash.now.alert = "Email or password is invalid"
        format.html { render "new" }
        format.any(:json) { render json: {message: "Email or password is invalid" }}
      end
    end
  end

  def destroy
    session[:user_id] = nil
    current_user.reset_token! unless current_user.blank?
    respond_to do |format|   
      format.html {redirect_to (root_url) , notice: "Logged out!"}
      format.json { render json: {message: "Logged out",status: 200} }
    end
  end
end
