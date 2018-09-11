class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :role_id
      t.string :name
      t.string :email
      t.string :mobile
      t.string :password
      t.timestamps
    end
  end
end
