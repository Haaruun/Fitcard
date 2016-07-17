class Post < ActiveRecord::Base
	has_many :comments

	belongs_to :category

	extend FriendlyId
    friendly_id :title, use: :slugged


    def next
    Post.where("id > ?", id).order("id ASC").first || Post.first
  end

  def previous
    Post.where("id < ?", id).order("id DESC").first || Post.last
  end


 
end
