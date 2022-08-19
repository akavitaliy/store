class Instrument < ApplicationRecord
  has_one_attached :image    
  belongs_to :user, optional: true

  validates :title, :brand, :price, :model, presence: true
  validates :discription, length: { maximum: 1000, too_long: "%{count} characters is the maximum aloud." }
  validates :title, length: { maximum: 140, too_long: "%{count} characters is the maximum aloud." }
  validates :price, numericality: { only_integer: true }, length: { maximum: 7 }

  BRAND = %w{ Fender Gibson Epiphone ESP Martin Dean }
  FINISH = %w{ Black White Navy Blue Red Yellow }
  CONDITION = %w{ New Excellent Mint Used Fair Poor }
end
