class User < ApplicationRecord
  has_secure_password
  has_many :strokes
  has_many :performances, through: :strokes
  validates :username, presence: true, uniqueness: true, length: { in: 6..20 }
end
