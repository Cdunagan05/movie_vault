class User < ApplicationRecord
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true
  validates_confirmation_of :password
  has_secure_password
  has_many :movies
end
