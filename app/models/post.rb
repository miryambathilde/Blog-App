class Post < ApplicationRecord
  belongs_to :author

  # associating elements to post
  has_many :elements
end
