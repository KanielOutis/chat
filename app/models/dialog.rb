class Dialog < ApplicationRecord
  has_many :messeges
  has_many :users, through: :messeges
end
