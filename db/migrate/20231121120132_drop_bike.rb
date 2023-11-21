class DropBike < ActiveRecord::Migration[7.1]
  def change
    drop_table :model_names
  end
end
