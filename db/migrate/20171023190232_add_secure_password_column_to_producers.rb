class AddSecurePasswordColumnToProducers < ActiveRecord::Migration[5.1]
  def change
    add_column :producers, :password_digest, :string
  end
end
