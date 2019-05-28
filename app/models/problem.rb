class Problem < ApplicationRecord
  belongs_to :user

  has_many :problem_votes

  validates :title, :description, presence: true
  validates :title, uniqueness: true
end
