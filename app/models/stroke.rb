class Stroke < ApplicationRecord
  belongs_to :user
  belongs_to :performance
  validates :sound, presence: true, length: { in: 1..3 }
end
