class PhotosController < ApplicationController
  before_action :authenticate_user

  def index
    photos = Photo.all
    render json: photos, include: "ratings"
    ## Need to add serializer code on line 6 to connect ratings to photos
  end

  def create
    photo = Photo.new(
      img_url: params[:img_url],
      user_id: current_user.id,
    )
    if photo.save
      render json: { message: "Photo created successfully" }, status: :created
    else
      render json: { errors: photo.errors.full_messages }, status: :bad_request
    end
  end

  def update
    photo = Photo.find_by(id: params[:id], user_id: current_user.id)
    # photo = current_user.photos.find_by(id: params[:id])
    photo.img_url = params[:img_url] || photo.img_url
    photo.save
    render json: photo.as_json
  end

  def destroy
    photo = Photo.find_by(id: params[:id], user_id: current_user.id)
    photo.destroy
    render json: { message: "Photo successfully removed" }
  end
end
