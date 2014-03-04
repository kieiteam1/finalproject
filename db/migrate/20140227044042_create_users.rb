class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password
      t.integer :zipcode
      t.integer :prf_category_id
      t.integer :prf_product_id

      t.timestamps
    end
  end
end

