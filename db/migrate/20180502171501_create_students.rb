class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
    	t.integer :cohort_id
    	t.integer :course_id
    	t.string :student_firstname
    	t.string :student_lastname
    	t.string :student_email
    	t.string :student_password
        t.integer :student_age
        t.string :student_highested
        t.integer :student_gpa
        t.string :student_grade
    end
  end
end
