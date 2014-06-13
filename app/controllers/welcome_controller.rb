class WelcomeController < ApplicationController
  def index
    @next_game = Game.next.first
  end
end
