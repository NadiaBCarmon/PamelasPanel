class CoursesController < ApplicationController

	def new
		@addcourse = Course.new
	end

	def create
		#Display values that are passed in from new
		@addcourse = Course.create(course_params)
		# @addstudent = Student.save
		 redirect_to '/courses/view'
	end

	def edit
	end

	def show
		@viewcourses = Course.all
		# render plain: params[:addstudent].inspect
	end

	def update
	end

	def destroy		
	end

 	# private - might not work because of devise
	 	def course_params
		 params.require(:course).permit(:cohort_id, :course_name, :course_hours, :course_description)
	 	end
	 # end

end
