class CreateEventUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :event_users do |t|
      t.integer :user_id
      t.integer :event_id
      t.integer :payment_method

      t.timestamps
    end
  end
end
