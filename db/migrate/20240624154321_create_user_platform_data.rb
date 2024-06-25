class CreateUserPlatformData < ActiveRecord::Migration[7.1]
  def change
    create_table :user_platform_data do |t|
      t.references :user, foreign_key: true
      t.references :user_platform, foreign_key: true
      t.boolean :has_account
      t.boolean :is_broadcasting
      t.string :display_text_content
      t.string :account_user_name
      t.string :account_url
      t.string :account_icon_image_url


      t.timestamps
    end
  end
end
