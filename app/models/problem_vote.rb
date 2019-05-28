class ProblemVote < ApplicationRecord
  belongs_to :problem, counter_cache: true
  belongs_to :user
end
