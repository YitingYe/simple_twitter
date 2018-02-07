class Followship < ApplicationRecord
  belongs_to :user, counter_cache: true
  belongs_to :following, class_name: "User"

  validates :following_id, uniqueness: { scope: :user_id }

  def following?(user)
    self.followings.include?(user)
  end

end
