class RatingsController < ApplicationController
  def create
    rating = Rating.new(
      description: params[:description],
      score_for_photo: params[:score_for_photo],
      rater_id: current_rater.id,
      photo_id: params[:photo_id],
      rater_feed_back: params[:rater_feed_back],
    )
    if rating.save
      render json: { message: "Rating created successfully" }, status: :created
    else
      render json: { errors: rating.errors.full_messages }, status: :bad_request
    end
  end
end
