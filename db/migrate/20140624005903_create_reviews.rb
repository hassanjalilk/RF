class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.text :create
      t.integer :product_id
      t.integer :user_id

      t.timestamps
    end
  end
end
