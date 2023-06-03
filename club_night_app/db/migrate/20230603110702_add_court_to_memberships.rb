class AddCourtToMemberships < ActiveRecord::Migration[7.0]
  def change
    add_column :memberships, :court, :integer
  end
end
