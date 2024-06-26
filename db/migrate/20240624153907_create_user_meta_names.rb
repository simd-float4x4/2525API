class CreateUserMetaNames < ActiveRecord::Migration[7.1]
  def change
    create_table :user_meta_names do |t|
      

      t.timestamps
    end
  end
end
