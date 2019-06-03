class Problem < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :solutions, dependent: :destroy

  has_many :problem_votes

  validates :title, :description, presence: true
  validates :title, uniqueness: true
end
