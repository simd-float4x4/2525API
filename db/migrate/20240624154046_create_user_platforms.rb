class CreateUserPlatforms < ActiveRecord::Migration[7.1]
  def change
    create_table :user_platforms do |t|
      t.integer :userPlatformId, null: false
      t.integer :itemId
      t.integer :platformId, null: false
      # t.string :platformName
      t.string :accountUserId
      t.string :accountUserName
      # t.string :accountUserSubText（Deprecated）
      t.string :accountIconImageUrl
      t.string :accountUserUrl
      # t. :accountStatus
      t.boolean :hasAccount
      t.boolean :isBroadCasting

      t.timestamps
    end
    # インデックスを貼りたい
    add_foreign_key :user_platforms, :users, column: :userPlatformId, primary_key: :userPlatformId
    add_index :user_platforms, :userPlatformId 

    add_index :user_platforms, :platformId, unique: true
  end
end

#　親
#　add_index :親のテーブル名, :親キー, unique: true

#　子
#　add_foreign_key :子のテーブル名, :親のテーブル名, column: :親キー, primary_key: :親キー
#　add_index :子のテーブル名, :親キー