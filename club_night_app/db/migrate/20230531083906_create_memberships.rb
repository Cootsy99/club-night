class CreateMemberships < ActiveRecord::Migration[7.0]
  def change
    create_table :memberships do |t|
      t.references :club, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.boolean :admin
      t.string :level
      t.string :membership_type
      t.date :membership_expiry

      t.timestamps
    end
  end
end
