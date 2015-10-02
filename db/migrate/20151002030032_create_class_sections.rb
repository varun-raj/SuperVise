class CreateClassSections < ActiveRecord::Migration
  def change
    create_table :class_sections do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
