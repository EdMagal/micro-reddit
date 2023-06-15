class Comment < ApplicationRecord
  belongs_to :post, foreign_key: "post_id"
  belongs_to :user, foreign_key: "user_id"

  validates :body, presence: true, length: { minimum: 2 }
end
