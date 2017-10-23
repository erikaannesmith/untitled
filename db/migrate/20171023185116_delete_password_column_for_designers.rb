class DeletePasswordColumnForDesigners < ActiveRecord::Migration[5.1]
  def change
    remove_column :designers, :password
  end
end
