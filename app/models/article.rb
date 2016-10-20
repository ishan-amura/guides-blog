class Article < ActiveRecord::Base
	has_many :comments
	validates :title, 
		presence:{ message:"Nahi chalat ahe be" },
		length: { minimum: 5 } 
end