class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @problems = Problem.order('problem_votes_count DESC').first(3)
  end
end
