class Like < ApplicationRecord
  belongs_to :user
  belongs_to :tweet

  default_scope -> { order('id DESC') }
end
