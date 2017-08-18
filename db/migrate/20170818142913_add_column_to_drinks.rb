class AddColumnToDrinks < ActiveRecord::Migration[5.1]
  def change
    add_column :drinks, :drink_category_id, :integer
  end
end
