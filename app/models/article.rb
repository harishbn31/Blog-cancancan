class Article < ActiveRecord::Base
	has_many :articlecategories
	has_many :categories, through: :articlecategories
	belongs_to :user
	validates :title,:body, presence:true

validate :max_articles
	validate :check_published_date
	# validate :max_articles

	private

def max_articles
			
		if (articles.length >= 2) 
			
			self.errors.add(:user_id, "cannot create more than 2 articles for category")
		end

	end
	def check_published_date
		if self.published_date < Date.today
			self.errors.add(:published_date,"cannot be less than today")
		end
	end

	# def max_articles
			
	# 	if (self.user.articles.length >= 2) && (self.user.role? "author")
			
	# 		self.errors.add(:user_id, "cannot create more than 2 articles")
	# 	end

	# end
	

end
