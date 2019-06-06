class SolutionsController < ApplicationController
  def index
    @solutions = Solution.where(status: 'selected')
    @solutions_popular = @solutions.where("solution_votes_count> 300")
  end
  def show
    @solution = Solution.find(params[:id])
  end

  def new
    @problem = Problem.find(params[:problem_id])
    @solution = Solution.new
  end

  def create
    @solution = Solution.new(solution_params)
    @solution.problem = Problem.find(params[:problem_id])
    @solution.user = current_user
    if @solution.save
      redirect_to solution_path(@solution)
    else
      render :new
    end
  end

  private

  def solution_params
    params.require(:solution).permit(:title, :description, :target, :photo)
  end
end
