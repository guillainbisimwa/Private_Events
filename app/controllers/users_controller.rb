class UsersController < ApplicationController
    
    def new
      @user = User.new
    end

	def create
		@user = User.new(user_params)
		if @user.save
			session[:user_id] = @user.id
			flash[:notice] = "Welcome #{@user.first_name} to the Private Events app"
			redirect_to users_path
		else
			flash[:alert] = user.errors.full_messages
			redirect_to "new"
		end
	end

	def show
		@user = User.find(params[:format].to_i)
	end

    private

    def user_params
      params.require(:user).permit(:first_name, :last_name, :email, :password)
	end

end
