class OrdersController < ApplicationController
    before_action :set_order, only: [:show, :update, :destroy]

    # GET /orders
    def index
        @orders = Order.all

        render json: @orders
    end

    # GET /orders/1
    def show
        render json: @order
    end

    # POST /orders
    def create
        @customer = Customer.find(order_params[:customer_id])
        if @customer.check_pt?(order_params[:payment_type_id])

            @order = Order.new(order_params)
    
            @order.amount_paid = 0.00
    
            if @order.save
                render json: @order, status: :created, location: @order
            else
                render json: @order.errors, status: :unprocessable_entity
            end

        else
            raise "Payment Type not associated with customer.... buckaroo"
        end

    end

    # PATCH/PUT /orders/1
    def update
        if @order.update(order_params)
            render json: @order
        else
            render json: @order.errors, status: :unprocessable_entity
        end
    end

    # DELETE /orders/1
    def destroy
        @order.destroy
    end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_order
        @order = Order.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def order_params
        params.permit(:customer_id, :payment_type_id)
    end
end
