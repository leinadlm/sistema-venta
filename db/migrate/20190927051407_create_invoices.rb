class CreateInvoices < ActiveRecord::Migration[5.2]
  def change
    create_table :invoices do |t|
      t.string :uuid
      t.string :metodo_pago
      t.string :forma_pago
      t.decimal :total

      t.timestamps
    end
  end
end
