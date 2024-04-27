class Post < ApplicationRecord
belongs_to :creator, class_name: "Author", foreign_key: "author_id"
has_and_belongs_to_many :emojis

end
