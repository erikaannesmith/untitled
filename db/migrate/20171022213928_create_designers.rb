class CreateDesigners < ActiveRecord::Migration[5.1]
  def change
    create_table :designers do |t|
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
