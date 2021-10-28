class RaterSessionsController < ApplicationController
  before_action :authenticate_user

  def create
    rater = Rater.find_by(email: params[:email])
    if rater && rater.authenticate(params[:password])
      jwt = JWT.encode(
        {
          user_id: rater.id, # the data to encode
          exp: 24.hours.from_now.to_i, # the expiration time
        },
        Rails.application.credentials.fetch(:secret_key_base), # the secret key
        "HS256" # the encryption algorithm
      )
      render json: { jwt: jwt, email: rater.email, rater_id: rater.id }, status: :created
    else
      render json: {}, status: :unauthorized
    end
  end
end
