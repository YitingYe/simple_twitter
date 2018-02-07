class Tweet < ApplicationRecord
  belongs_to :user, dependent: :destroy, optional: true
  has_many :replies
  mount_uploader :image, PhotoUploader

  has_many :likes, dependent: :destroy
  has_many :liked_users, through: :likes, source: :user

  default_scope -> { order('id DESC') }



end
