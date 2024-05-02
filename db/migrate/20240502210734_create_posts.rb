class CreatePosts < ActiveRecord::Migration[7.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :content
      t.references :author, null: false, foreign_key: true
      t.references :creator, null: false, foreign_key: { to_table: :authors }

      t.timestamps
    end
  end
end