class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :password
      t.string :email
      t.integer :zipcode
      t.integer :prf_category_id
      t.integer :prf_product_id

      t.timestamps
    end
  end
end

