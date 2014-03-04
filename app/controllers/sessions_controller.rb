class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(:email => params[:email])
    if user.present?
      if user.password == params[:pwd]
        session[:user_id] = user.id
        redirect_to "/", notice: "Welcome, <% User.name %>"
      else
        redirect_to "/sessions/create", notice: "Wrong Password."
      end
    else
        redirect_to "/users/new", notice: "Please Sign Up to logging in."
    end
  end

end
