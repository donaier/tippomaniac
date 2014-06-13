class WelcomeController < ApplicationController
  def index
    @next_games = Game.next
  end
end
