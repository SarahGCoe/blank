class Solution < ApplicationRecord
  belongs_to :user
  belongs_to :problem

  has_many :solution_votes

  validates :title, :description, presence: true
end
