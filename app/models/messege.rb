class Messege < ApplicationRecord
  belongs_to :user
  belongs_to :dialog
end
