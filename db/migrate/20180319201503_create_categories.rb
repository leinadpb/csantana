class CreateCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :categories do |t|
      t.string :name, null:false, limit:30
      t.integer :products_quantity, default:0
      t.timestamps
    end
  end
end
