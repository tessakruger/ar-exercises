class Employee < ActiveRecord::Base

	belongs_to :store

	validates :first_name, :last_name, presence: true
	validates :hourly_rate, numericality: { greater_than_or_equal_to: 40, less_than_or_equal_to: 200 }
	validate :need_valid_store_id

private

	def need_valid_store_id
		if !(store)
		errors.add(:need_valid_store_id, "Please enter a valid store ID")
		end
	end

end