class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.references :user_meta_names, foreign_key: true
      t.references :user_platforms, foreign_key: true
      t.string :hashTag
      t.string :name
      t.integer :userId

      t.timestamps
    end

    add_index :users, :userId, unique: true
    add_index :users, :hashTag, unique: true
  end
end