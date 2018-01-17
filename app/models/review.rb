class Review < ApplicationRecord
  belongs_to :product

  validates :message, presence: true
end
