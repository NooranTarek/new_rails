class Author < ApplicationRecord
    has_many :posts, dependent: :destroy
    has_many :created_posts, class_name: "Post", foreign_key: "creator_id"
  end
  