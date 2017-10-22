class AddOrderIdToItems < ActiveRecord::Migration[5.1]
  def change
    add_reference :items, :order, index: true, foreign_key: true    
  end
end
