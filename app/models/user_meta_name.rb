class UserMetaName < ApplicationRecord
    belongs_to :user

    validates :meta_name, presence: true

    #add_reference :meta_name, :user, null: false, foreign_key: true

    # change_table :meta_name do |p|
    #     p.references :meta_name, :user, null: false, foreign_key: true
    # end
end
