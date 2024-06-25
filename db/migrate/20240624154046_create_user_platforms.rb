class CreateUserPlatforms < ActiveRecord::Migration[7.1]
  def change
    create_table :user_platforms do |t|
      t.references :user, foreign_key: true
      t.references :platform, foreign_key: true
      t.boolean :has_account, default: false
      t.boolean :is_broadcasting, default: false
      t.string :display_text_content
      t.string :account_user_name
      t.string :account_url
      t.string :account_icon_image_url

      t.timestamps
    end
  end
end
