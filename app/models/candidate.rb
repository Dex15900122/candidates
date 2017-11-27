class Candidate < ApplicationRecord
  has_many :vote_logs
  mount_uploader :image, PhotoUploader
end
