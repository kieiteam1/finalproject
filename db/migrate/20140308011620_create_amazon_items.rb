class CreateAmazonItems < ActiveRecord::Migration
  def change
    create_table :amazon_items do |t|

      t.timestamps
    end
  end
end
