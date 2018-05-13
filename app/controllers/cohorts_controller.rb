class CohortsController < ApplicationController

	def new
		@addcohort = Cohort.new
	end

	def create
		#Display values that are passed in from new
		@addcohort = Cohort.create(cohort_params)
		# @addstudent = Student.save
		 redirect_to '/cohorts/view'
	end

	def edit
	end

	def show
		@viewcohorts = Cohort.all
		# render plain: params[:addstudent].inspect
	end

	def update
	end

	def destroy		
	end

 	# private - might not work because of devise
	 	def cohort_params
		 params.require(:cohort).permit(:course_id, :cohort_name, :start_date, :end_date)
	 	end
	 # end

end