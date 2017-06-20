class CreateStyles < ActiveRecord::Migration
  def change
    create_table :styles do |t|
      t.string :name
      t.string :description
      t.decimal :min_abv
      t.decimal :max_abv
      t.timestamps null: false
    end
  end
end