class CreateLineItems < ActiveRecord::Migration[5.0]
  def change
    create_table :line_items do |t|
      t.integer :price
      t.integer :quantity
      t.integer :product_id

      t.timestamps
    end
  end
end
