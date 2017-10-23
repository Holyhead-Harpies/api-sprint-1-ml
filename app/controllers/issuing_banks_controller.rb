class IssuingBanksController < ApplicationController
    before_action :set_issuing_bank, only: [:show, :update, :destroy]

    # GET /issuing_banks
    def index
        @issuing_banks = IssuingBank.all

        render json: @issuing_banks
    end

    # GET /issuing_banks/1
    def show
        render json: @issuing_bank
    end

    # POST /issuing_banks
    def create
        @issuing_bank = IssuingBank.new(issuing_bank_params)

        if @issuing_bank.save
            render json: @issuing_bank, status: :created, location: @issuing_bank
        else
            render json: @issuing_bank.errors, status: :unprocessable_entity
        end
    end

    # PATCH/PUT /issuing_banks/1
    def update
        if @issuing_bank.update(issuing_bank_params)
            render json: @issuing_bank
        else
            render json: @issuing_bank.errors, status: :unprocessable_entity
        end
    end

    # DELETE /issuing_banks/1
    def destroy
        @issuing_bank.destroy
    end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_issuing_bank
        @issuing_bank = IssuingBank.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def issuing_bank_params
        params.fetch(:issuing_bank, {})
    end
end
