class AddRequestToOrder < ActiveRecord::Migration[8.1]
  def change
    add_reference :orders, :request, null: true, foreign_key: true
  end
end
