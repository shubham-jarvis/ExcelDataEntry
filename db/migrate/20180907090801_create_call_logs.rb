class CreateCallLogs < ActiveRecord::Migration[5.1]
  def change
    create_table :call_logs do |t|
      t.string :user_id
      t.string :customer_id
      t.string :status
      t.string :remarks
      t.string :description
      t.string :reason
      t.timestamps
    end
  end
end
