class CurrentlyAssignedToDataTypeChangeInCustomers < ActiveRecord::Migration[5.1]
  def change
    change_column :customers, :currently_assigned_to, 'integer USING CAST(currently_assigned_to AS integer)'
  end
end
