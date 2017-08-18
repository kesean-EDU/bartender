class Bartenders < ActiveRecord::Migration[5.1]
  def change
    create_table :bartenders do |t|
      t.string :name
      t.integer :drink_category_id
      end
  end
end
