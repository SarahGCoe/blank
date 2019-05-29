class SolutionVote < ApplicationRecord
  belongs_to :solution, counter_cache: true
  belongs_to :user

  validates :solution, uniqueness: { scope: :user, message: "You should vote only once" }
end
