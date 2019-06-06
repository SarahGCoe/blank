class SolutionVotesController < ApplicationController
  def create
    @solution = Solution.find(params[:solution_id])
    SolutionVote.create(user: current_user, solution: @solution)
    min_votes = 100
    @solution.selected! if @solution.solution_votes.count > min_votes
    redirect_to problem_path(@solution.problem) if @solution.save
  end
end
