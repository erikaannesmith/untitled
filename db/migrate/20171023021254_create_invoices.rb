class CreateInvoices < ActiveRecord::Migration[5.1]
  def change
    create_table :invoices do |t|
      t.date :payment_due_date
      t.string :payment_status
      t.float :price
      t.string :order_status
      t.date :due_date
      
      t.timestamps
    end
  end
end
