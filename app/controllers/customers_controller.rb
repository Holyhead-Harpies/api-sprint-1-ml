class CustomersController < ApplicationController
    before_action :set_customer, only: [:show, :update]

    # GET /customers
    def index

        @customer = Customer.all
        @people = Customer.where(:id => Order.select(:customer_id).map(&:customer_id))
        if params[:active] == 'false'
            render json:  @customer - @people
        elsif params[:active] == 'true'
            render json:  @people
        else
            render json: @customer
        end
    end

    # GET /customers/1
    def show
        render json: @customer
    end

    # POST /customers
    def create
        @customer = Customer.new(customer_params)

        @customer.activity_status = true

        if @customer.save
            render json: @customer, status: :created, location: @customer
        else
            render json: @customer.errors, status: :unprocessable_entity
        end
    end

    def destroy
        raise "Sorry no can do buckaroo."
    end

    # PATCH/PUT /customers/1
    def update
        if @customer.update(customer_params)
            render json: @customer
        else
            render json: @customer.errors, status: :unprocessable_entity
        end
    end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_customer
        @customer = Customer.find(params[:id])
    end


    # Only allow a trusted parameter "white list" through.
    def customer_params
        params.permit(:first_name, :last_name)
    end
end
