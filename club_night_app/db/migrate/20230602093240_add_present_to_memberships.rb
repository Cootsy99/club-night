class AddPresentToMemberships < ActiveRecord::Migration[7.0]
  def change
    add_column :memberships, :present, :boolean
  end
end
