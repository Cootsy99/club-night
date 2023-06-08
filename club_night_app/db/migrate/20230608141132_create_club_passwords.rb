class CreateClubPasswords < ActiveRecord::Migration[7.0]
  def change
    create_table :club_passwords do |t|
      t.string :password
      t.references :club, null: false, foreign_key: true

      t.timestamps
    end
  end
end
