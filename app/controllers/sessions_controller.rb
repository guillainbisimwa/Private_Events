class SessionsController < ApplicationController
  def new; end

  def create
    @user = User.find_by(id: (params[:session][:number_field]).to_i)

    @user = @user.nil? ? User.find_by(first_name: (params[:session][:first_name]).downcase) : @user
    if @user
      session[:user_id] = @user.id
      flash[:notice] = 'Logged in successfully'
      redirect_to users_path(@user)

    else
      flash.now[:alert] = 'There was something wrong with your login details'
      render 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    flash.now[:alert] = 'Log out!'
    redirect_to root_path
  end
end
