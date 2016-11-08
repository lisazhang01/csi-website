class Course < ApplicationRecord
  has_many :students
  has_many :students, through: :student_courses
  has_one :teacher
end
