class AddProducerIdToApplication < ActiveRecord::Migration[5.1]
  def change
    add_reference :applications, :producer, index: true, foreign_key: true
  end
end
