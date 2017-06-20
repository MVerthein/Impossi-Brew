class CreateBeers < ActiveRecord::Migration
  def change
    create_table :beers do |t|
      t.string :name
      t.string :description
      t.string :brewery
      t.decimal :abv
      t.integer :style_id
      t.timestamps null: false
    end
  end
end
