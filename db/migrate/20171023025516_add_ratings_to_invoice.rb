class AddRatingsToInvoice < ActiveRecord::Migration[5.1]
  def change
    add_column :invoices, :designer_rating, :integer    
    add_column :invoices, :producer_rating, :integer        
  end
end
