class CreateProducers < ActiveRecord::Migration[5.1]
  def change
    create_table :producers do |t|
      t.text :email
      t.text :password
      t.text :company_name
      t.text :website
      t.text :description
      t.text :location
      
      t.timestamps
    end
  end
end
