class Post < ActiveRecord::Base
  attr_accessible :title, :slug, :body, :excerpt, :content
  validates :body, :title, presence: true

  def slugify
    t = Array.new
    t[] = "Testing"
    t[] = "Something"
    t[] = "else"
  end
end
