class BuymsController < ApplicationController
    before_action :authenticate_user!, except: [:index]
    before_action :set_buym, only: [:show, :edit, :update, :destroy]

	def index
		# @buyms = Buym.all
		@user = current_user
		@q = Buym.ransack(params[:q])
		@buyms = @q.result(distinct: true)
		# @buyms = Buym.order(created_at: :desc)
  	@order_item = current_order.order_items.new
	end

	def show
	end

	def new
		@buym = Buym.new
	end

	def create
		@buym = Buym.create(buym_params)
		redirect_to buyms_path
	end

	def edit
	end

	def update
		@buym.update(buym_params)
		redirect_to buyms_path
	end

	def destroy
		@buym.destroy
		redirect_to buyms_path
	end



	private

    def set_buym
      @buym = Buym.find(params[:id])
    end

	def buym_params
		params.require(:buym).permit(:title, :brand, :price,
			 :ram, :storage, :delivery, :description, :user_id)
	end
end
