class CreateCustomers < ActiveRecord::Migration[5.1]
  def change
    create_table :customers do |t|

      t.string :Organization
      t.string :State
      t.string :Designation
      t.string :Name
      t.string :Gender
      t.float :Mobile_No
      t.float :Whatsapp_No
      t.string :Email
      t.string :Address
      t.string :Village
      t.string :Taluka
      t.string :District
      t.float :Pincode
      t.string :Vidhan_Sabha
      t.string :Booth
      t.integer :Primary_Member_ID
      t.integer :Voter_ID
      t.string :Caste
      t.string :Category
      t.string :Education
      t.string :Profession

      t.timestamps
    end
  end
end
