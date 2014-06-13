class WelcomeController < ApplicationController
  def index
    @next_games = Game.next
    @past_games = Game.past
  end
end
