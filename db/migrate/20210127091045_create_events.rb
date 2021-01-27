class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :title
      t.string :introduction
      t.integer :price
      t.integer :date
      t.integer :month
      t.integer :year
      t.string :time
      t.string :place
      t.string :event_image_id

      t.timestamps
    end
  end
end
