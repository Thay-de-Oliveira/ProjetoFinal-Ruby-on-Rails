class AddEventsFormIdToServices < ActiveRecord::Migration[5.2]
  def change
    add_reference :services, :events_form, foreign_key: true
  end
end
