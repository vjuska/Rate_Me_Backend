class Photo < ApplicationRecord
  has_many :ratings
  has_many :raters, through: :ratings
  belongs_to :user
end
