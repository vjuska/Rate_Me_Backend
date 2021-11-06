class Photo < ApplicationRecord
  has_many :ratings
  has_many :raters, through: :ratings
  belongs_to :user

  def average_rating
    result = 0
    ratings.each do |rating|
      result = rating.score_for_photo + result
    end
    result / ratings.length.to_f
  end
end
