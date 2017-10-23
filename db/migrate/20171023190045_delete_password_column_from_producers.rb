class DeletePasswordColumnFromProducers < ActiveRecord::Migration[5.1]
  def change
    remove_column :producers, :password    
  end
end
