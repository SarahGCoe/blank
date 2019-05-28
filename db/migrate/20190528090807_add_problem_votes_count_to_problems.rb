class AddProblemVotesCountToProblems < ActiveRecord::Migration[5.2]
  def change
    add_column :problems, :problem_votes_count, :integer, default: 0
  end
end
