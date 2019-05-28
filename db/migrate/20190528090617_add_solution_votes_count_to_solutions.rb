class AddSolutionVotesCountToSolutions < ActiveRecord::Migration[5.2]
  def change
    add_column :solutions, :solution_votes_count, :integer, default: 0
  end
end
