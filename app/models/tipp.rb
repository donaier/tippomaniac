class Tipp < ActiveRecord::Base
  belongs_to :user
  belongs_to :game

  def tipped_winner
    if tipp_home > tipp_visitor
      'home'
    elsif tipp_home < tipp_visitor
      'visitor'
    else
      'remis'
    end
  end

  def calc_score
    score = 0
    if game.is_over
      if tipped_winner == game.winner
        score += 1
      end
      if tipp_home == game.score_home && tipp_visitor == game.score_visitor
        score += 2
      end
    end
    self.update_attributes(score: score)
  end
end
