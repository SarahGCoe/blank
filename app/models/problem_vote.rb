class ProblemVote < ApplicationRecord
  belongs_to :problem, counter_cache: true
  belongs_to :user

  validates :problem, uniqueness: { scope: :user, message: "You should vote only once" }
end
