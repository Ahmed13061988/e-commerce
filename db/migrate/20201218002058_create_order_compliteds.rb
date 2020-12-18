class CreateOrderCompliteds < ActiveRecord::Migration[6.0]
  def change
    create_table :order_compliteds do |t|

      t.timestamps
    end
  end
end
