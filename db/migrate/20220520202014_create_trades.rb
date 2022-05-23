class CreateTrades < ActiveRecord::Migration[7.0]
  def change
    create_table :trades do |t|
      t.string :product
      t.text :description
      t.string :category_name
      t.string :category_id
      t.date :expiration
      t.string :neighborhood
      t.integer :user_id
      t.text :interested_in
      t.boolean :accept
      t.string :image_file_name
      t.string :image_content_type
      t.datetime :image_updated_at

      t.timestamps
    end
  end
end
