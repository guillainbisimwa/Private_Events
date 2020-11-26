# rubocop : disable Layout/EndOfLine

class UsersController < ApplicationController
  before_action :set_user, only: [:show]

  before_action :require_same_user, only: [:show]

  def new
    @user = User.new
    redirect_to users_path if logged_in?
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      flash[:notice] = "Welcome #{@user.first_name} to the Private Events app"
      redirect_to users_path
    else
      flash[:alert] = user.errors.full_messages
      redirect_to 'new'
    end
  end

  def show; end

  private

  def set_user
    if logged_in?
      @user = User.find(session[:user_id])
    else
      redirect_to login_path
    end
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password)
  end

  def require_same_user
    return unless current_user != @user

    flash[:alert] = 'You can only see your own events'
    redirect_to users_path
  end
end

# rubocop : enable Layout/EndOfLine