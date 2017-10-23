class AddApplicationIdToInvoice < ActiveRecord::Migration[5.1]
  def change
    add_reference :invoices, :application, index: true, foreign_key: true    
    add_reference :invoices, :order, index: true, foreign_key: true 
  end
end
