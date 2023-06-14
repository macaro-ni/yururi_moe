class CreatePictures < ActiveRecord::Migration[6.1]
  def change
    create_table :pictures do |t|
      t.string :name, null: false
      t.integer :genre_id, null: false
      t.text :introduction 
      
      t.timestamps
    end
  end
end
