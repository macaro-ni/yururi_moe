class CreateContacts < ActiveRecord::Migration[6.1]
  def change
    create_table :contacts do |t|
      
      t.integer :user_id
      t.string :name, null: false
      t.string :email, null: false
      t.text :message, null: false
      
      t.timestamps
    end
  end
end
