class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable, :rememberable

  has_many :tipps

  has_attached_file :avatar, 
                    styles: { square: '256x256#' },
                    default_url: "/users/avatars/:style/missing.png",
                    url: "/:class/:attachment/:id/:style_:filename",
                    path: ":rails_root/public/:class/:attachment/:id/:style_:filename"

  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

  def score
    tipps.sum(:score)
  end

  def self.ranked
    User.all.sort_by { |user| user.score }.reverse
  end
end
