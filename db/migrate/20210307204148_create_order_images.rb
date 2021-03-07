class CreateOrderImages < ActiveRecord::Migration[6.1]
  def change
    create_table :order_images do |t|
      t.integer :quantity
      t.belongs_to :image, null: false, foreign_key: true
      t.belongs_to :order, null: false, foreign_key: true

      t.timestamps
    end
  end
end
