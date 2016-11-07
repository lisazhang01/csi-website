class Student < ApplicationRecord
  belongs_to :client
  has_many :courses
  has_many :courses :through student_courses
end
