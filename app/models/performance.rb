class Performance < ApplicationRecord
  has_many :strokes, dependent: :destroy
  has_many :users, through: :strokes
  validates :name, presence: true, uniqueness: true, length: { in: 2..100 }
end
