# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Admin.create(admin_email: 'ncarmon@sja1890.edu', admin_password: 'J0s13')

Cohort.create(course_id: 1, cohort_name: 'WDF Spring 2018', start_date: '03/20/2018', end_date: "07/25/2018" )
Cohort.create(course_id: 2, cohort_name: 'WDF Fall 2018', start_date: '04/23/2018', end_date: "07/29/2018" )
Cohort.create(course_id: 1, cohort_name: 'SEI Fall 2018', start_date: '05/27/2018', end_date: "08/26/2018" )
Cohort.create(course_id: 2, cohort_name: 'SEI Summer 2018', start_date: '07/23/2018', end_date: "11/20/2018" )
Cohort.create(course_id: 1, cohort_name: 'WDF Fall 2018', start_date: '03/21/2018', end_date: "06/27/2018" )

Course.create(cohort_id: 1, course_name: 'NYC Web Development Fellowship', course_description: 'This is the course description for NYC WDF', course_hours: 68)
Course.create(cohort_id: 2, course_name: 'UX Design Intensive', course_description: 'This is the course description for UX Design Intensive', course_hours: 58)
Course.create(cohort_id: 1, course_name: 'Software Engineering Intensive', course_description: 'This is the course description for SEI', course_hours: 61)
Course.create(cohort_id: 2, course_name: 'Microbio 101', course_description: 'This is the course description for Microbio', course_hours: 55)
Course.create(cohort_id: 1, course_name: 'Evo Devo', course_description: 'This is the course description for Evo Devo', course_hours: 48)

Instructor.create(course_id: 1, cohort_id: 1, instructor_firstname: 'David', instructor_lastname: 'Patlut', instructor_email: 'dpatlut@sja1890.edu', instructor_password: 'J0s13', instructor_age: 38, instructor_salary: 65000, instructor_highested: 'College')
Instructor.create(course_id: 1, cohort_id: 2, instructor_firstname: 'Paul', instructor_lastname: 'Ortega', instructor_email: 'portega@sja1890.edu', instructor_password: 'J0s13', instructor_age: 42, instructor_salary: 200000000, instructor_highested: 'College')
Instructor.create(course_id: 2, cohort_id: 2, instructor_firstname: 'Julia', instructor_lastname: 'Hammonds', instructor_age: 32, instructor_salary: 78000, instructor_highested: 'College')
Instructor.create(course_id: 1, cohort_id: 1, instructor_firstname: 'Abdul', instructor_lastname: 'Ahmed', instructor_age: 28, instructor_salary: 63000, instructor_highested: 'College')
Instructor.create(course_id: 1, cohort_id: 2, instructor_firstname: 'Uchenna', instructor_lastname: 'Elba', instructor_age: 35, instructor_salary: 83000, instructor_highested: 'College')
Instructor.create(course_id: 2, cohort_id: 1, instructor_firstname: 'Lionel', instructor_lastname: 'Ritchie', instructor_age: 41, instructor_salary: 43000, instructor_highested: '???')
Instructor.create(course_id: 2, cohort_id: 1, instructor_firstname: 'Lionel', instructor_lastname: 'Özçivit', instructor_age: 41, instructor_salary: 43000, instructor_highested: '???')

Student.create(cohort_id: 1, course_id: 1, student_firstname: 'Yoon Jo', student_lastname: 'Han', student_email: 'yjohan@sja1890.edu', student_password: 'J0s13', student_age: 22, student_highested: "College", student_gpa: 4.0,)
Student.create(cohort_id: 2, course_id: 2, student_firstname: 'Merrishel', student_lastname: 'Richardson', student_email: 'mrichardson@sja1890.edu', student_password: 'J0s13', student_age: 22, student_highested: "College", student_gpa: 4.0,)
Student.create(cohort_id: 2, course_id: 2, student_firstname: 'Georgina', student_lastname: 'Hendricks', student_age: 22, student_highested: "College", student_gpa: 3.7, student_grade: "A-")
Student.create(cohort_id: 1, course_id: 1, student_firstname: 'Merlina', student_lastname: 'Castellano', student_age: 22, student_highested: "College", student_gpa: 3.2, student_grade: "B-")
Student.create(cohort_id: 2, course_id: 1, student_firstname: 'Kadijah', student_lastname: 'Iqbal', student_age: 22, student_highested: "College", student_gpa: 3.4, student_grade: "B")
Student.create(cohort_id: 1, course_id: 2, student_firstname: 'Keona', student_lastname: 'Owens', student_age: 22, student_highested: "College", student_gpa: 2.7 , student_grade: "C+")
Student.create(cohort_id: 2, course_id: 2, student_firstname: 'Tatiana', student_lastname: 'Basnislova', student_age: 22, student_highested: "College", student_gpa: 3.9 , student_grade: "A")
Student.create(cohort_id: 1, course_id: 2, student_firstname: 'Hatice', student_lastname: 'Özçivit', student_age: 24, student_highested: "College", student_gpa: 3.6 , student_grade: "A")


