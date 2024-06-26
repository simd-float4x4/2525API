class CreateUserPlatforms < ActiveRecord::Migration[7.1]
  def change
    create_table :user_platforms do |t|
      t.integer :userPlatFormId, null: false
      t.integer :itemId
      # t.integer :platformId
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
    add_foreign_key :user_platforms, :users, column: :userPlatFormId, primary_key: :userPlatFormId
    add_index :user_platforms, :userPlatFormId 
  end
end
