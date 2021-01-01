class Tweet < ApplicationRecord
  has_many :likes

  after_create_commit { broadcast_prepend_to "tweets" }
end
