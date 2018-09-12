class UndoColumnsNameInCustomers < ActiveRecord::Migration[5.1]
  def change
    rename_column :customers, :organization, :Organization
    rename_column :customers, :state, :State
    rename_column :customers, :designation, :Designation
    rename_column :customers, :name, :Name
    rename_column :customers, :gender, :Gender
    rename_column :customers, :mobile_no, :Mobile_No
    rename_column :customers, :whatsapp_no, :Whatsapp_No
    rename_column :customers, :email, :Email
    rename_column :customers, :address, :Address
    rename_column :customers, :village, :Village
    rename_column :customers, :taluka, :Taluka
    rename_column :customers, :district, :District
    rename_column :customers, :pincode, :Pincode
    rename_column :customers, :vidhan_sabha, :Vidhan_Sabha
    rename_column :customers, :booth, :Booth
    rename_column :customers, :primary_member_id, :Primary_Member_ID
    rename_column :customers, :voter_id, :Voter_ID
    rename_column :customers, :caste, :Caste
    rename_column :customers, :category, :Category
    rename_column :customers, :education, :Education
    rename_column :customers, :profession, :Profession
  end
end
