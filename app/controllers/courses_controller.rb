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
		@editcourse = Course.find(params[:id])
	end

	def show
		@viewcourses = Course.all.order(course_name: :asc)
		# render plain: params[:addstudent].inspect
	end

	def update
			@updatecourse = Course.find(params[:id])
		if @updatecourse.update(course_params)
			# flash[:notice] = "Article was successfully updated"
			redirect_to '/courses/view'
		else 
			render 'edit'
		end
	end

	def destroy	
		Course.find(params[:id]).destroy
		redirect_to '/courses/view'	
	end

 	# private - might not work because of devise
	 	def course_params
		 params.require(:course).permit(:course_name, :course_hours, :course_description)
	 	end
	 # end

end
