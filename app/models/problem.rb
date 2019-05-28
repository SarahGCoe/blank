class Problem < ApplicationRecord
  belongs_to :user
  has_many :solutions

  has_many :problem_votes

  validates :title, :description, presence: true
  validates :title, uniqueness: true
  validates :category, inclusion: { in: %w[Environment Food Lifestyle Education Social Tech] }
end
