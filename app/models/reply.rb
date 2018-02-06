class Reply < ApplicationRecord
  belongs_to :tweet
  belongs_to :user

  default_scope -> { order('id DESC') }
end
