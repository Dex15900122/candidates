class Candidate < ApplicationRecord
  has_many :vote_logs
  mount_uploader :image, PhotoUploader
  has_many :comments, dependent: :destroy
  has_many :posts, dependent: :destroy


  extend FriendlyId
  friendly_id :name, use: :slugged


end
