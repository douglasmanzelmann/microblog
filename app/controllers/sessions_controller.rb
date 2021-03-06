class SessionsController < ApplicationController
	def new
	end

	def create
		user = User.find_by_email(params[:session][:email])
		if user && user.authenticate(params[:session][:password])
			sign_in user
			redirect_back_or user
		else 
			#error message and re-render signin form
			flash.now[:error] = 'Invalid email/password combiantion'
			render 'new'
		end
	end

	def destroy
		sign_out
		redirect_to root_path
	end
end
