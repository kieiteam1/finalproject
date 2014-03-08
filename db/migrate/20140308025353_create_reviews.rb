class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string  :title
      t.integer :deal_id
      t.integer :user_id
      t.string  :comment
      t.integer :rating

      t.timestamps
    end
  end
end
