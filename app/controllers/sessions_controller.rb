class SessionsController < ApplicationController
  def new; end

  def create
    @user = User.find_by(id: (params[:session][:number_field]).to_i)

    if @user.nil? 
      @user = User.find_by(first_name: (params[:session][:first_name]).downcase)
      if @user.nil?
        redirect_to login_path, alert: 'There was something wrong with your login details' and return
      end 
    end

    if @user
      session[:user_id] = @user.id
      flash[:notice] = 'Logged in successfully'
      redirect_to users_path(@user)
    end
  end

  def destroy
    session[:user_id] = nil
    flash.now[:alert] = 'Log out!'
    redirect_to root_path
  end
end
