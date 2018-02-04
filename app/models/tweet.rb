class Tweet < ApplicationRecord
  belongs_to :user, dependent: :destroy, optional: true
end
