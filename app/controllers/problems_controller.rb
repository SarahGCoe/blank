class ProblemsController < ApplicationController
  before_action :authenticate_user!, only: [:show]
  def index
    @problems = Problem.all
  end

  def show
    @problem = Problem.find(params[:id])
  end
end
