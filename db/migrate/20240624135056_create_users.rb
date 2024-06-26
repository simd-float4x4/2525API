class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.integer :userId, null: false
      t.string :hashtag
      t.string :name
      t.integer :userPlatFormId
    
      t.timestamps
    end
    add_index :users, :userId, unique: true
    add_index :users, :userPlatFormId, unique: true
  end
end