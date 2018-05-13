class CreateInstructors < ActiveRecord::Migration[5.2]
  def change
    create_table :instructors do |t|
    	t.integer :cohort_id
    	t.integer :course_id
    	t.string :instructor_firstname
    	t.string :instructor_lastname
    	t.string :instructor_email
    	t.string :instructor_password
        t.integer :instructor_age
        t.integer :instructor_salary
        t.string :instructor_highested
    end
  end
end
