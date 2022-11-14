class DepositsController < ApplicationController
  before_action :set_deposit, only: %i[ show edit update destroy ]

  def index
    @deposits = Deposit.all
  end

  def show
  end

  def new
    @deposit = Deposit.new
  end

  def create
    @deposit = Deposit.new(deposit_params)

    respond_to do |format|
      if @deposit.save
        format.html { redirect_to deposit_url(@deposit), notice: "Depósito enviado com sucesso!" }
        format.json { render :show, status: :created, location: @deposit }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @deposit.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    def set_deposit
      @deposit = Deposit.find(params[:id])
    end

    def deposit_params
      params.require(:deposit).permit(:bank_account_id, :amount)
    end
end
