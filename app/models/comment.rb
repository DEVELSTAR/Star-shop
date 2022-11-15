class Comment < ApplicationRecord
  belongs_to :buym
  belongs_to :user

  validates :body, presence: true, length: { minimum: 4 }
end