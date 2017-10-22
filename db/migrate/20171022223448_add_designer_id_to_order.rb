class AddDesignerIdToOrder < ActiveRecord::Migration[5.1]
  def change
    add_reference :orders, :designer, index: true, foreign_key: true
  end
end
