class ProblemVotesController < ApplicationController
  def create
    @problem = Problem.find(params[:problem_id])
    ProblemVote.create(user: current_user, problem: @problem)
    redirect_back(fallback_location: root_path) if @problem.save
  end
end
