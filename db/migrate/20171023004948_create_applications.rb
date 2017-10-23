class CreateApplications < ActiveRecord::Migration[5.1]
  def change
    create_table :applications do |t|
      t.integer :price_offer
      t.text :specs
      t.text :result

      t.timestamps
    end
  end
end
