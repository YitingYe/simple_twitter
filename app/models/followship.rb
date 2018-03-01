class Followship < ApplicationRecord
<<<<<<< HEAD
  belongs_to :user
  belongs_to :following, class_name: "User"

  validates :following_id, uniqueness: { scope: :user_id }

  def following?(user)
    self.followings.include?(user)
  end

=======
  validates :following_id, uniqueness: { scope: :user_id }

>>>>>>> 3f687d8450c1b3408c06805c3dccba381bd73b72
end
