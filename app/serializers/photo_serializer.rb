class PhotoSerializer < ActiveModel::Serializer
  attributes :id, :img_url, :user_id, :average_rating
  has_many :ratings
  has_many :raters
  belongs_to :user
end
