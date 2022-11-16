class OrderItemsController < ApplicationController
    before_action :authenticate_user!
    
	def create
		@order = current_user 
		@order = current_order
		@order_item = @order.order_items.new(order_item_params)
		@order.save
		session[:order_id] = @order.id
	    respond_to do |format|
	        format.js
	        format.html
	    end
	end

	def destroy
		@order = current_user 
		# @order = current_order
		@order_item = @order.order_items.find(params[:id])
		@order_item.destroy
		@order_items = @order.order_items
	    respond_to do |format|
	        format.js
	        format.html
	    end
	end

	private

	def order_item_params
		params.require(:order_item).permit(:buym_id, :user_id)
	end
end

