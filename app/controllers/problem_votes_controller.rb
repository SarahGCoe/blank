class ProblemVotesController < ApplicationController
  def create
    @problem = Problem.find(params[:problem_id])
    ProblemVote.create(user: current_user, problem: @problem)
    if @problem.save
      respond_to do |format|
        # format.html { redirect_back(fallback_location: root_path) }
        format.js
      else
        format.html { redirect_back(fallback_location: root_path) }
        # format.js
      end
    end
  end
end
