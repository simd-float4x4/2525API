class CreateUserMetaNames < ActiveRecord::Migration[7.1]
  def change
    create_table :user_meta_names do |t|
      t.references :user, foreign_key: true
      t.string :meta_name

      t.timestamps
    end
  end
end
