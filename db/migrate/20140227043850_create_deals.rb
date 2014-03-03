class CreateDeals < ActiveRecord::Migration
  def change
    create_table :deals do |t|
      t.string :name
      t.integer :original_price
      t.integer :deal_price
      t.integer :product_id
      t.integer :category_id
      t.string :image_url
      t.string :description
      t.string :link

      t.timestamps
    end
  end
end

