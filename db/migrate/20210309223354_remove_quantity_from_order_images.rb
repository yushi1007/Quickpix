class RemoveQuantityFromOrderImages < ActiveRecord::Migration[6.1]
  def change
    remove_column :order_images, :quantity, :integer
  end
end
