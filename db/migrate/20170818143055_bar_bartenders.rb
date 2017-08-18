class BarBartenders < ActiveRecord::Migration[5.1]
  def change
    create_table :bar_bartenders do |t|
      t.integer :bar_id
      t.integer :bartender_id
      end
  end
end
