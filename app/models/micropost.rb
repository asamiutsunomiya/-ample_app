class Micropost < ApplicationRecord
  belongs_to :user
  default_scope -> { order(created_at: :desc) }
  validates :user_id, presense:true
  validates :content, presense:true, length: { maximum: 140 }
end
