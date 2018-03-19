class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
      t.string :long_title, null:false, limit:90
      t.string :short_title, null:false, limit:20
      t.text :content, null:false
      t.integer :author_id, null:false
      t.boolean :featured, default:false
      t.string :photo_path, null:false
      t.timestamps
    end
  end
end
