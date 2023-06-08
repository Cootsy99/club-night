class AddPasswordToClubs < ActiveRecord::Migration[7.0]
  def change
    add_column :clubs, :password, :string, default: "password"
  end
end
