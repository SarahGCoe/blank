class Category < ApplicationRecord
  has_many :problems

  validates :name, inclusion: { in: %w[Environment Food Lifestyle Education Social Tech] }, presence: true
end
