class Like < ApplicationRecord
<<<<<<< HEAD
  belongs_to :user
  belongs_to :tweet, counter_cache: true

  default_scope -> { order('id DESC') }
=======
>>>>>>> 3f687d8450c1b3408c06805c3dccba381bd73b72
end
