class AddOrderIdToApplication < ActiveRecord::Migration[5.1]
  def change
    add_reference :applications, :order, index: true, foreign_key: true
  end
end
