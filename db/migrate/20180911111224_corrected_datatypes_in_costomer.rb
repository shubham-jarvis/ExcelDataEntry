class CorrectedDatatypesInCostomer < ActiveRecord::Migration[5.1]
  def change
    change_column :customers, :Mobile_No, :string
    change_column :customers, :Whatsapp_No, :string
    change_column :customers, :Pincode, :string
  end
end
