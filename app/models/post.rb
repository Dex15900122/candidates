class Post < ApplicationRecord
  belongs_to :user
  belongs_to :candidate

  validates :content , presence: true , length: {minimum: 3,maximimum:1000}
end
