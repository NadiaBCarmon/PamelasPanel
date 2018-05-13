class CreateCohorts < ActiveRecord::Migration[5.2]
  def change
    create_table :cohorts do |t|
    	t.integer :course_id
    	t.string :cohort_name
    	t.datetime :start_date
    	t.datetime :end_date
    end
  end
end
