class AddDetailsToStudents < ActiveRecord::Migration
  def change
    add_column :students, :name, :string
    add_column :students, :register_number, :integer
    add_column :students, :department_id, :integer
    add_column :students, :batch_id, :integer
    add_column :students, :class_section_id, :integer
  end
end
