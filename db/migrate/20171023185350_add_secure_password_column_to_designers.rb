class AddSecurePasswordColumnToDesigners < ActiveRecord::Migration[5.1]
  def change
    add_column :designers, :password_digest, :string
  end
end
