class AuthorSessionsController < ApplicationController
	
	def new
	
	end

	def create
		if 	login(params[:email], params[:password])
		 	redirect_back_or_to(articles_path, notice: 'Logged in successfuly')
		else
			flash.new.alert = 'Login failed.'
			render action: :new
		end
	end

	def destroy
		logout
		redirect_to(:authers, notice: 'Logged out!')
	end
	
end