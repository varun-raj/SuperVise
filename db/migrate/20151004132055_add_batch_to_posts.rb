class AddBatchToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :batch_id, :integer
  end
end
