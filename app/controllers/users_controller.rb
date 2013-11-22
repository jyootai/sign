class UsersController < ApplicationController

  def show
  	@user = User.find(params[:id])
  end
  def register
  	@title="Register"
	@user=User.new
	if request.post? and params[:user]
		@user=User.new(user_params)
		if @user.save
			redirect_to @user
		else
		render 'register'
		end
	end
		
  end

  def creat
  	@title="Login"
	if request.post? and params[:user]
		@user=User.new(log_params)
		user=User.find_by_name_and_password(@user.name,@user.password)
		if user
		 sign_in user
		redirect_to user
		else
		 flash.now[:error] = 'Invalid email/password combination'
			redirect_to :action=>"register"
		end
	end

  end
  def destroy
   	 sign_out
        redirect_to register_path
  end

  def index
  
  	@title="Home"
  end
  private

  def user_params
  	params.require(:user).permit(:name,:email,:password)
  end
  def log_params
  	params.require(:user).permit(:name,:password)
  end
end
