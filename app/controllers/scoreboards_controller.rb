class ScoreboardsController < ApplicationController
  def show
    @ranked_users = User.ranked
  end
end
