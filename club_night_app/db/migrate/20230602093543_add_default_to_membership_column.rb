class AddDefaultToMembershipColumn < ActiveRecord::Migration[7.0]
  def change
    change_column :memberships, :present, :boolean, default: false
  end
end
