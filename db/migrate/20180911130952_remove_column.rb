class RemoveColumn < ActiveRecord::Migration[5.1]
  def change
    remove_column :customers, :is_complete
  end
end
