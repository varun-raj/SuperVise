class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.text :message
      t.integer :faculty_id
      t.integer :department_id
      t.integer :year_id
      t.integer :class_section_id

      t.timestamps null: false
    end
  end
end
