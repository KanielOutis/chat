class User < ApplicationRecord
  has_many :messeges
  validates :name, presence: true, uniqueness: true
  has_many :dialogs, through: :messeges
  has_secure_password
end
