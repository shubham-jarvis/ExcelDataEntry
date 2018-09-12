class CorrectedColumnNamesInCustomers < ActiveRecord::Migration[5.1]
  def change
    rename_column :customers, :Organization , :organization
    rename_column :customers, :State , :state
    rename_column :customers, :Designation , :designation
    rename_column :customers, :Name , :name
    rename_column :customers, :Gender , :gender
    rename_column :customers, :Mobile_No , :mobile_no
    rename_column :customers, :Whatsapp_No , :whatsapp_no
    rename_column :customers, :Email , :email
    rename_column :customers, :Address , :address
    rename_column :customers, :Village , :village
    rename_column :customers, :Taluka , :taluka
    rename_column :customers, :District , :district
    rename_column :customers, :Pincode , :pincode
    rename_column :customers, :Vidhan_Sabha , :vidhan_sabha
    rename_column :customers, :Booth , :booth
    rename_column :customers, :Primary_Member_ID , :primary_member_id
    rename_column :customers, :Voter_ID , :voter_id
    rename_column :customers, :Caste , :caste
    rename_column :customers, :Category , :category
    rename_column :customers, :Education , :education
    rename_column :customers, :Profession , :profession
  end
end
