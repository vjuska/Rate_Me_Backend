class Rater < ApplicationRecord
  has_secure_password
  has_many :ratings
end
