class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.integer :userId, null: false
      t.string :hashTag, null: false
      t.string :name

      t.timestamps
    end

    add_index :users, :userId, unique: true
    add_index :users, :hashTag, unique: true
  end
end