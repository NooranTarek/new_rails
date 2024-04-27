class CreateJoinTablePostsEmojis < ActiveRecord::Migration[7.1]
  def change
    create_join_table :emojis, :posts do |t|
      t.index [:emoji_id, :post_id]
      t.index [:post_id, :emoji_id]
    end
  end
end
