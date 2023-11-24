class CreateServices < ActiveRecord::Migration[5.2]
  def change
    create_table :services do |t|
      t.string :tipe
      t.integer :cod

      t.timestamps
    end
  end
end
