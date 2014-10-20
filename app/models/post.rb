class Post < ActiveRecord::Base
	attr_accessible :title, :slug, :body, :excerpt, :content
	validates :body, :title, :presence => true
end
