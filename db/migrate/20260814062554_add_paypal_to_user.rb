class AddPaypalToUser < ActiveRecord::Migration[8.1]
  def change
    add_column :users, :paypal, :string
  end
end
