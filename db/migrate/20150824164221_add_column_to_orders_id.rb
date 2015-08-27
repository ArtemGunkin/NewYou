class AddColumnToOrdersId < ActiveRecord::Migration
  def change
  		add_column :orders, :order_perfomer_id, :integer
  end
end
