class Micropost < ApplicationRecord
  belongs_to :user
  
  validates :user_id, presence: true
  validates :content, presence: true, length: { maximum: 255 }
  
  has_many :user_favo_relations
  has_many :users, through: :user_favo_relations, source: :user
end
