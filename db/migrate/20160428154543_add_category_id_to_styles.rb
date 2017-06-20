class AddCategoryIdToStyles < ActiveRecord::Migration
  def change
    add_column :styles, :category_id, :integer
  end
end
