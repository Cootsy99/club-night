class AddRestingToMemberships < ActiveRecord::Migration[7.0]
  def change
    add_column :memberships, :resting, :boolean, default: false
  end
end
