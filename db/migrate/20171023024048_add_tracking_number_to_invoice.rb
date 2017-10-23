class AddTrackingNumberToInvoice < ActiveRecord::Migration[5.1]
  def change
    add_column :invoices, :tracking_number, :string    
  end
end
