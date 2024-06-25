class CreatePlatforms < ActiveRecord::Migration[7.1]
  def change
    create_table :platforms do |t|
      t.integer :number
      t.string :name
      t.string :icon
      t.string :brandColor

      t.timestamps
    end
    add_index :platforms, :number, unique: true
  end
end