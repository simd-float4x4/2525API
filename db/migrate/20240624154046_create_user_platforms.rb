class CreateUserPlatforms < ActiveRecord::Migration[7.1]
  def change
    create_table :user_platforms do |t|

      t.timestamps
    end
  end
end
