class ProblemVotesController < ApplicationController
  def create
    @problem = Problem.find(params[:problem_id])
    ProblemVote.create(user: current_user, problem: @problem)
    redirect_to problem_path(@problem) if @problem.save
  end
end
