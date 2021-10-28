class Photo < ApplicationRecord
  has_many :ratings
  has_many :raters, through: :ratings
  belongs_to :user

  # def average_rating
  #   result = 0
  #   ratings.each do |rating|
  #   end
  #   result
  # end
end
