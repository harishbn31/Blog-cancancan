class Comment < ActiveRecord::Base
	validates_presence_of :body, :article_id, :user_id
	belongs_to :user 
	belongs_to :article
end
