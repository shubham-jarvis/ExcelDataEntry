class AddIsCompleteToCustomers < ActiveRecord::Migration[5.1]
  def change
    add_column :customers, :is_complete, :boolean
  end
end
