class OrderItem < ApplicationRecord
	belongs_to :order
	belongs_to :buym
    belongs_to :user
	
	before_save :set_unit_price


	def unit_price
		if persisted?
			self[:unit_price]
		else
			buym.price
		end
	end


	private

	def set_unit_price
		self[:unit_price] = unit_price
	end
end
