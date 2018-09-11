class AddCallIdToCallLog < ActiveRecord::Migration[5.1]
  def change
    add_column :call_logs, :call_id, :string
  end
end
