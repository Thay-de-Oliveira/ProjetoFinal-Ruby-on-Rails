class CreatePersonsRegisters < ActiveRecord::Migration[5.2]
  def change
    create_table :persons_registers do |t|
      t.string :name
      t.integer :cpf
      t.integer :rg

      t.timestamps
    end
  end
end
