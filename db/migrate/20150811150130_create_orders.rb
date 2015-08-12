class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :title
      t.text :desc
      t.string :image
      t.float :price
      t.integer :time

      t.timestamps null: false
    end
  end
end
