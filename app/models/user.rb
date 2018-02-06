class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  mount_uploader :avatar, AvatarUploader

  has_many :tweets
  has_many :replies

  has_many :followships, dependent: :destroy
  has_many :followings, through: :followships

  def admin?
    self.role == "admin"
  end 
end
