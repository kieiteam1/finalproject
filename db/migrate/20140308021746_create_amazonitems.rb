class CreateAmazonitems < ActiveRecord::Migration
  def change
    create_table :amazonitems do |t|

      t.timestamps
    end
  end
end
