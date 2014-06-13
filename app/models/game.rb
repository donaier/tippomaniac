class Game < ActiveRecord::Base
  default_scope { order("start_time ASC") }

  scope :past, -> { where('start_time < ?', Time.now - 2.hours) }
  scope :next, -> { where('start_time > ?', Time.now) }
end
