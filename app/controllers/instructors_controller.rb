class InstructorsController < ApplicationController

	def new
		@addinstructor = Instructor.new
	end

	def edit
	 	@editinstructor = Instructor.find(instructor_params)
	end

	def create
		#Display values that are passed in from new
		@createinstructor = Instructor.create(instructor_params)
		# @addstudent = Student.save
		 redirect_to '/instructors/view'
	end

	def show
		@viewinstructors = Instructor.all
		# render plain: params[:addstudent].inspect
	end

	def update
		@addinstructor = Instructor.find(instructor_params)
		if @addinstructor.update
			flash[:notice] = "Article was successfully updated"
			redirect_to '/instructors/view'
		else 
			render 'edit'
		end
	end

	def destroy		
	end

 	# private - might not work because of devise
	 	def instructor_params
		 params.require(:instructor).permit(:cohort_id, :course_id, :instructor_firstname, :instructor_lastname, 
		 	:instructor_age, :instructor_salary, :instructor_highested)
	 	end
	 # end
end