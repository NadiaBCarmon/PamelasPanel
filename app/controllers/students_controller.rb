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
		@editstudent = Student.find(params[:id])
	end

	def show
		@viewstudents = Student.all.order(student_lastname: :asc)
		# render plain: params[:addstudent].inspect
	end

	def update
		@updatestudent = Student.find(params[:id])
		if @updatestudent.update(student_params)
			# flash[:notice] = "Article was successfully updated"
			redirect_to '/students/view'
		else 
			render 'edit'
		end
	end

	def destroy	
	Student.find(params[:id]).destroy
		redirect_to '/students/view'	
	end

 	# private - might not work because of devise
	 	def student_params
		 params.require(:student).permit(:cohort_id, :course_id, :student_firstname, 
			:student_lastname, :student_age, :student_highested, :student_gpa, :student_grade)
	 	end
	 # end

end