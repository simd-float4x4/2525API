class CreatePlatforms < ActiveRecord::Migration[7.1]
  def change
    create_table :platforms do |t|
      t.integer :platformId, null: false
      t.string :platformName
      t.string :icon
      t.string :imageURL
      t.string :brandColor

      t.timestamps
    end
    add_foreign_key :platforms, :user_platforms, column: :platformId, primary_key: :platformId
    add_index :platforms, :platformId
  end
end


#　親
#　add_index :親のテーブル名, :親キー, unique: true

#　子
#　add_foreign_key :子のテーブル名, :親のテーブル名, column: :親キー, primary_key: :親キー
#　add_index :子のテーブル名, :親キー