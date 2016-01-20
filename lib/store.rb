class Store < ActiveRecord::Base

	has_many :employees

	validates :name, length: { minimum: 3 }
	validates :annual_revenue, numericality: { greater_than: 0 }
	validate :must_have_mens_or_womens

	def must_have_mens_or_womens
		if !(mens_apparel) && !(womens_apparel)
			errors.add(:must_have_apparel, "Stores must carry at least one of the men's or women's apparel")
		end
	end
end