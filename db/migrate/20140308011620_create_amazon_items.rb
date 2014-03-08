# class CreateAmazonItems < ActiveRecord::Migration
#   def change
#     create_table :amazon_items do |t|

#       t.timestamps
#     end
#   end
# end

class CreateAmazonitems < ActiveRecord::Migration
  def self.up
    create_table :amazonitems do |t|
      t.column :asin, :string, :null => false
      t.column :detailpageurl, :text
      t.column :salesrank, :integer
      t.column :productgroup, :string
      t.column :binding, :string
      t.column :title, :text
      t.column :image_url, :text
      t.column :author, :string
      t.column :artist, :string
      t.column :manufacturer, :string
      t.column :price, :string
      t.column :lowprice, :string
      t.column :totalreviews, :integer, :default => 0
      t.column :averagerating, :string
      t.column :rating1, :string
      t.column :summary1, :text
      t.column :comment1, :text
      t.column :rating2, :string
      t.column :summary2, :text
      t.column :comment2, :text
      t.column :rating3, :string
      t.column :summary3, :text
      t.column :comment3, :text
      t.column :rating4, :string
      t.column :summary4, :text
      t.column :comment4, :text
      t.column :rating5, :string
      t.column :summary5, :text
      t.column :comment5, :text
      t.timestamps
    end
    add_index :amazonitems, :asin, :unique => true
  end

  def self.down
    drop_table :amazonitems
  end
end
