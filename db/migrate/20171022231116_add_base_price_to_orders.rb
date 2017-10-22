class AddBasePriceToOrders < ActiveRecord::Migration[5.1]
  def change
    add_column :orders, :base_price, :integer
  end
end
