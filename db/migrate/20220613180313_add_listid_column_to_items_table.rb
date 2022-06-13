class AddListidColumnToItemsTable < ActiveRecord::Migration[6.1]
  def change
    add_column :items, :list_id, :string 
  end
end
