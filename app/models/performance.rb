class Performance < ApplicationRecord
  has_many :strokes
  has_many :users, through: :strokes
  validates :name, presence: true, uniqueness: true, length: { minimum: 2 }
end
