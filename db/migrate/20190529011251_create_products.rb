class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :nombre
      t.string :descripcion
      t.decimal :precio
      t.integer :stock

      t.timestamps
    end
  end
end
