class DashboardsController < ApplicationController
	def index
		@cohorts = Cohort.all
		@students = Student.all
		@gpa_cohort1 = Student.where(cohort_id: 1).pluck(:student_gpa)
		@gpa_cohort2 = Student.where(cohort_id: 2).pluck(:student_gpa)
			
	end

	def edit

	end

	def show

	end

	def update

	end

	def destroy
		
	end

end