class User < ApplicationRecord
  has_secure_password
  has_many :photos
  has_many :ratings
  validates :email, presence: true, uniqueness: true

  def primary_photo
    if photos.length == 0
      return "https://st.depositphotos.com/2101611/4338/v/600/depositphotos_43381243-stock-illustration-male-avatar-profile-picture.jpg"
    else
      return photos[0].img_url
    end
  end
end
