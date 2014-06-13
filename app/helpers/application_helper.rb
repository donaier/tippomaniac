module ApplicationHelper
  def tipp_for_game(user, game)
    if user.tipps.where(game: game)
      user.tipps.where(game: game).first
    else
      nil
    end
  end
end
