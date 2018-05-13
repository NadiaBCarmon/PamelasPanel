class AddCourseDescriptionToCourses < ActiveRecord::Migration[5.2]
  def change
    add_column :courses, :course_description, :string
  end
end