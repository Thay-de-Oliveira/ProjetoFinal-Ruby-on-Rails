class AddEventsFormsToService < ActiveRecord::Migration[5.2]
  def change
    add_reference :services, :AddEvents, foreign_key: true
  end
end
