class UsersController < ApplicationController
  def dashboard
    @problems = Problem.where(user: current_user)
    @solutions = Solution.where(user: current_user)
  end

end
