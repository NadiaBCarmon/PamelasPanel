class SessionsController < ApplicationController

	skip_before_action :verify_authenticity_token
	
	# authenticate_with_http_digest
	protect_from_forgery prepend: true

	 # protect_from_forgery unless: -> { request.format.json? }

	def new
		@admins = Admin.new
	end

	def create
		#Either change admin_email/admin_password to "username" and "password" in your migrations, forms and params or
		#Do an If/Else statement to accept login if admin or user values match that within the Admin or User database, respectively.
		session[:id] = Admin.find_by(admin_email: params[:admin_email], admin_password: params[:admin_password])
		# .id
		   redirect_to '/dashboard'

		   # flash[:notice] = "Password invalid. Please try again!"
	    #    flash[:color]= "invalid"
	end

	def destroy
		# @admins = Admin.all
		# @admin_email = cookies[:admin_email].delete 
		# @admin_password = cookies[:admin_password].delete
	end

end