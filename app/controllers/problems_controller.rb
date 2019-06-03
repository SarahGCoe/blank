require 'pg_search'
class ProblemsController < ApplicationController
  before_action :authenticate_user!, only: [:show]
  def index
    if params[:search].present?
      @problems = Problem.search_by_attr(params[:search])
    else
      @problems = Problem.all
    end
  end

  def show
    @problem = Problem.find(params[:id])
  end
end
