class CreateEventsForms < ActiveRecord::Migration[5.2]
  def change
    create_table :events_forms do |t|
      t.string :categoryevent
      t.string :grouping
      t.string :subgrouping
      t.string :species
      t.string :subspecies

      t.timestamps
    end
  end
end
