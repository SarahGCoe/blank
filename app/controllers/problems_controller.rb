require 'pg_search'
class ProblemsController < ApplicationController
  helper_method :sort_direction
  before_action :authenticate_user!, only: [:show]
  def index
    if params[:search].present?
      @problems = Problem.search_by_attr(params[:search])
    elsif params[:sort] == 'votes'
      @problems = Problem.all.order("problem_votes_count #{sort_direction}")
    else
      @problems = Problem.all
    end
  end

  def show
    @problem = Problem.find(params[:id])
  end

  private

  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : 'asc'
  end
end
