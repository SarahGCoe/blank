class SolutionsController < ApplicationController
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
    params.require(:solution).permit(:title, :description, :target, :file)
  end
end
