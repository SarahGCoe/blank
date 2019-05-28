class SolutionsController < ApplicationController
  def index
    @problem = Problem.find(params[:problem_id])
    @solutions = Solution.where(problem: @problem)
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
    @problem = Problem.find(params[:problem_id])
    if @solution.save
      redirect_to solution_path
    else
      render :new
    end
  end

  private

  def solution_params
    params.require(:solution).permit(:title, :description)
  end
end
