class SolutionVotesController < ApplicationController
  def create
    @solution = Solution.find(params[:solution_id])
    SolutionVote.create(user: current_user, solution: @solution)
    redirect_to problem_path(@solution.problem) if @solution.save
  end
end
