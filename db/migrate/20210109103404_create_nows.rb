class CreateNows < ActiveRecord::Migration[5.2]
  def change
    create_table :nows do |t|
      t.text :now_body
      t.integer :hobby_code
      t.string :address
      t.float :latitude
      t.float :longitude
      t.integer :user_id

      t.timestamps
    end
  end
end
