class ClassSection < ActiveRecord::Base
  belongs_to :department
  has_many :students
end
