class AddeditsController < ApplicationController

		def index 
			##Will need this on roasters page when we're displaying this information
			# @courses = Course.all
			# @cohorts = Cohort.all
			# @students = Student.all
			# @insturctors = Instructor.all
		end

		def new
			@addcourse = Course.new
			# @addcohort = Cohort.new
			# @addstudent = Student.new
			# @addinsturctor = Instructor.new		
		end

		def create
			# render plain: params[:addcourse].inspect
			@addcourse = Course.create(course_params)
			redirect_to '/courses'
		end

		# private
			# def course_params
			# 	params.require(:course).permit(:course_name, :course_description)
			# end

		def show
			# @course = Course.find(params[:id])
			# //redirect to permanently display on another page
		end

		def edit
			# course = Course.find(params[:id])
		end

		def update
			# course = Course.find(params[:id])
		end

		def destroy
		end

		# private
		# def addedit_params
		# 	params.require(:addedit).permit(:course_name, :course_description)
		# end
end