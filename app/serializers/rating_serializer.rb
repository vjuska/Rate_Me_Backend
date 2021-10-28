class RatingSerializer < ActiveModel::Serializer
  attributes :id, :rater_id, :description, :score_for_photo, :rater_feed_back
  belongs_to :photo
  belongs_to :rater
end
