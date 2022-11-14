class CartsController < ApplicationController
    before_action :authenticate_user!
  def show
    @order_items = current_user.order_items.all
  end
end
