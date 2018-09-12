class AddingAssignedToColumn < ActiveRecord::Migration[5.1]
  def change
    add_column :customers, :currently_assigned_to, :string
  end
end
