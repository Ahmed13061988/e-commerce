class CreateSellers < ActiveRecord::Migration[6.0]
  def change
    create_table :sellers do |t|
      t.string :store_name
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password_digest
      t.timestamps
    end
  end
end
