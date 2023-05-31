class CreateClubs < ActiveRecord::Migration[7.0]
  def change
    create_table :clubs do |t|
      t.string :founder
      t.string :name
      t.string :location
      t.string :timetable

      t.timestamps
    end
  end
end
