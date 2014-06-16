class Game < ActiveRecord::Base
  default_scope { order("start_time ASC") }

  after_update :set_tipp_scores

  scope :past, -> { where('start_time < ?', Time.now).reverse }
  scope :next, -> { where('start_time > ?', Time.now) }

  has_many :tipps

  def winner
    if score_home > score_visitor
      'home'
    elsif score_home < score_visitor
      'visitor'
    else
      'remis'
    end
  end

  def set_tipp_scores
    if is_over
      tipps.each do |t|
        t.calc_score
      end
    end
  end
end
