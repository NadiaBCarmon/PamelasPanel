class StudentsController < ApplicationController

	def index
	end

	def new
		@addstudent = Student.new
	end

	def create
		#Display values that are passed in from new
		@addstudent = Student.create(student_params)
		# @addstudent = Student.save
		redirect_to '/students/view'
	end

	def edit
	end

	def show
		@viewstudents = Student.all
		# render plain: params[:addstudent].inspect
	end

	def update
	end

	def destroy		
	end

 	# private - might not work because of devise
	 	def student_params
		 params.require(:student).permit(:cohort_id, :course_id, :student_firstname, 
			:student_lastname, :student_age, :student_highested, :student_gpa, :student_grade)
	 	end
	 # end

end