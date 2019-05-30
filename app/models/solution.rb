class Solution < ApplicationRecord
  belongs_to :user
  belongs_to :problem

  has_many :solution_votes, dependent: :destroy

  validates :title, :description, presence: true
end
