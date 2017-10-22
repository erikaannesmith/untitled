class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.date :max_due_date
      t.text :specs

      t.timestamps
    end
  end
end
