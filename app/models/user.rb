class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :buyms, dependent: :destroy
  has_many :order_items, dependent: :destroy
  has_many :comments, dependent: :destroy
end