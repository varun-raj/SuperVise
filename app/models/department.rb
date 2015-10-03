class Department < ActiveRecord::Base
  has_many :students
  has_many :faculties
  has_many :class_sections

end
