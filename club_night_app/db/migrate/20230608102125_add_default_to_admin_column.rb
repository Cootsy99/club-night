class AddDefaultToAdminColumn < ActiveRecord::Migration[7.0]
  def change
    change_column :memberships, :admin, :boolean, default: false
  end
end
