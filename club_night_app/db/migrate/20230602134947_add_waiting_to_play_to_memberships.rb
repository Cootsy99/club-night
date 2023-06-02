class AddWaitingToPlayToMemberships < ActiveRecord::Migration[7.0]
  def change
    add_column :memberships, :waiting_to_play, :boolean, default: true
  end
end
