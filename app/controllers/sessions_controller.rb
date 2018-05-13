class SessionsController < ApplicationController

	skip_before_action :verify_authenticity_token
	
	# authenticate_with_http_digest
	protect_from_forgery prepend: true

	 # protect_from_forgery unless: -> { request.format.json? }

	def new
		@admins = Admin.new
	end

	def create
		# @admins_email = Admin.new(params[:admin_email]) 
		# @admin_password = Admin.new(params[:admin_password])

		# if @admin_password.save && @admin_email.save
		redirect_to '/dashboard'

		else 
		flash[:notice] = "Password invalid. Please try again!"
      	flash[:color]= "invalid"

		# Admin.find(session[:admin_email]) && Admin.find(session[:admin_password])
	end

	def destroy
		@admins = Admin.all
		@admin_email = cookies[:admin_email].delete 
		@admin_password = cookies[:admin_password].delete
	end

end