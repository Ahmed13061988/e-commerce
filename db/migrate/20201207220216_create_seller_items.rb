class CreateSellerItems < ActiveRecord::Migration[6.0]
  def change
    create_table :seller_items do |t|
      t.references :seller, foreign_key: true
      t.references :item, foreign_key: true
      t.timestamps
    end
  end
end
