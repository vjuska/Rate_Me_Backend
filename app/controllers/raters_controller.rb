class RatersController < ApplicationController
  def create
    rater = Rater.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation],
    )
    if rater.save
      render json: { message: "Rater created successfully" }, status: :created
    else
      render json: { errors: rater.errors.full_messages }, status: :bad_request
    end
  end
end
