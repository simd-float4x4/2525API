class CreatePlatforms < ActiveRecord::Migration[7.1]
  def change
    create_table :platforms do |t|
      t.integer :number, null: false
      t.string :name, null: false
      t.string :icon, null: false
      t.string :brandColor, null: false

      t.timestamps
    end
    add_index :platforms, :number, unique: true
  end
end