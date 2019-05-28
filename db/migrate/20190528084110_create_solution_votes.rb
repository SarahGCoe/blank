class CreateSolutionVotes < ActiveRecord::Migration[5.2]
  def change
    create_table :solution_votes do |t|
      t.references :solution, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
