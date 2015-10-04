class ClassSection < ActiveRecord::Base
  belongs_to :department
  has_many :students


  def full_name
  [name, department.name].join(' - ')
end
end
