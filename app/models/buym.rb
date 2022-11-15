class Buym < ApplicationRecord
  belongs_to :user
  has_many :order_items, dependent: :destroy
  has_many :comments, dependent: :destroy
   
  validates :title, presence: true
  validates :brand, presence: true
  validates :price, presence: true, numericality: { in: 500..100000 }
  validates :ram, presence: true
  validates :storage, presence: true
  validates :delivery, presence: true
end
