class AddDefaultToCourtColumn < ActiveRecord::Migration[7.0]
  def change
    change_column :memberships, :court, :integer, default: 0
  end
end
