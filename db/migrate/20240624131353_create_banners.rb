class CreateBanners < ActiveRecord::Migration[7.1]
  def change
    create_table :banners do |t|
      t.string :imageURL, null: false
      t.integer :imageBannerCount, null: false
     
      t.timestamps
    end
  end
end