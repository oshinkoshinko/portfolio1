class ChangeDataHobbyCodeToNows < ActiveRecord::Migration[5.2]
  def change
    change_column :nows, :hobby_code, :string
  end
end
