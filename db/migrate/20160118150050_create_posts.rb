class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :author
      t.string :title
      t.string :content
      t.text :color
      t.string :summary

      t.timestamps null: false
    end
  end
end
