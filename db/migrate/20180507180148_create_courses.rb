class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
    	t.integer :cohort_id
    	t.string :course_name
    	t.integer :course_hours
    end
  end
end