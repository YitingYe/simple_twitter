class Followship < ApplicationRecord
  belongs_to :user
  belongs_to :following, class_name: "User",counter_cache: true

  validates :following_id, uniqueness: { scope: :user_id }

  def following?(user)
    self.followings.include?(user)
  end

end
