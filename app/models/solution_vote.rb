class SolutionVote < ApplicationRecord
  belongs_to :solution, counter_cache: true
  belongs_to :user
end
