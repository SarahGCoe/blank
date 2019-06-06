require 'pg_search'
class ProblemsController < ApplicationController
  helper_method :sort_direction
  before_action :authenticate_user!, only: [:show, :new]

  def index
    if params[:search].present?
      @problems = Problem.search_by_attr(params[:search])
    elsif params[:sort] == 'votes'
      @problems = Problem.all.order("problem_votes_count #{sort_direction}")
    else
      @problems = Problem.all
    end

    if params[:filters].present?
      session[:category] = params[:filters][:category]
    end

    if !session[:category].blank?
      @problems = @problems.where(:category => Category.find_by_name(session[:category]))

    end

  end

  def show
    @problem = Problem.find(params[:id])
    @solutions_sorted_desc = @problem.solutions.sort_by { |solution| -solution.solution_votes_count }
    @winning_solution = @problem.solutions.where(status:'selected').max_by { |solution| solution.solution_votes_count }
  end

  def new
    @problem = Problem.new
  end

  def create
    @problem = Problem.new(problem_params)
    @problem.category = Category.find(params[:problem][:category_id])
    @problem.user = current_user
    if @problem.save

      redirect_to problem_path(@problem)
    else
      render :new
    end
  end

  private

  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : 'asc'
  end

  def problem_params
    params.require(:problem).permit(:title, :description, :category_id)
  end
end
