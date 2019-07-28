class SessionsController < ApplicationController
  def new
  end

  def create 
    # if session[:name] == nil
    #   redirect_to login_path
    # # elsif session[:name] == ''
    # #   redirect_to '/login'
    # else 
      if !params[:name] || params[:name].empty?
        redirect_to controller: 'sessions', action: 'new'
      else 
        session[:name] = params[:name]
      redirect_to controller: 'application', action: 'hello'
    end
  end 

  def destroy 
    session.delete :name 
    redirect_to controller: 'sessions', action: 'new'
  end

end
