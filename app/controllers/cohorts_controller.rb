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
		@editcohort = Cohort.find(params[:id])
	end

	def show
		@viewcohorts = Cohort.all.order(cohort_name: :asc)
		# render plain: params[:addstudent].inspect
	end

	def update
			@updatecohort = Cohort.find(params[:id])
		if @updatecohort.update(cohort_params)
			# flash[:notice] = "Article was successfully updated"
			redirect_to '/cohorts/view'
		else 
			render 'edit'
		end
	end

	def destroy
		Cohort.find(params[:id]).destroy
		redirect_to '/cohorts/view'
	end

 	# private - might not work because of devise
	 	def cohort_params
		 params.require(:cohort).permit(:course_id, :cohort_name, :start_date, :end_date)
	 	end
	 # end

end