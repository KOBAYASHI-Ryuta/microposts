class UserFavoRelation < ApplicationRecord
  belongs_to :user
  belongs_to :favorite, class_name: 'Micropost'
  
  validates :user_id, presence: true
  validates :favorite_id, presence: true
end