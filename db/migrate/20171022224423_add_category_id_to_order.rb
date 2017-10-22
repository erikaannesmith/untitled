class AddCategoryIdToOrder < ActiveRecord::Migration[5.1]
  def change
    add_reference :orders, :category, index: true, foreign_key: true
  end
end
