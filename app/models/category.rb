class Category < ActiveRecord::Base
	has_many :articlecategories
	has_many :articles, through: :articlecategories

	validates :name ,presence: true

end
