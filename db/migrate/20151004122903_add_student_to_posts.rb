class AddStudentToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :student_id, :integer
  end
end
