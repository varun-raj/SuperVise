class CreateBatches < ActiveRecord::Migration
  def change
    create_table :batches do |t|
      t.integer :start_year
      t.integer :end_year
      t.string :title

      t.timestamps null: false
    end
  end
end
