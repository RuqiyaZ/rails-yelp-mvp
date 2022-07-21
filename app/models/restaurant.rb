class Restaurant < ApplicationRecord
  validates :address, :name, :category, :phone_number, presence: true, uniqueness: true
  # validates :category, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"] }
  has_many :reviews, dependent: :destroy
end
