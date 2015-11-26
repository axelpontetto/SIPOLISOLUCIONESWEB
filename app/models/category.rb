class Category < ActiveRecord::Base
	
	validates :nombre,
						presence:true,
						uniqueness: true,
						format: { with: /\A[a-zA-Z ]+\z/}

	has_many :couches
	
end
