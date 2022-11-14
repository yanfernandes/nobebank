class BankAccountsController < ApplicationController
  before_action :set_bank_account, only: %i[ show edit update destroy ]

  def index
    @bank_accounts = BankAccount.all
  end

  def show
  end

  def new
    @bank_account = BankAccount.new
  end

  def edit
  end

  def create
    @bank_account = BankAccount.new(bank_account_params)

    respond_to do |format|
      if @bank_account.save
        format.html { redirect_to bank_account_url(@bank_account), notice: "Bank account was successfully created." }
        format.json { render :show, status: :created, location: @bank_account }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bank_account.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @bank_account.update(bank_account_params)
        format.html { redirect_to bank_account_url(@bank_account), notice: "Bank account was successfully updated." }
        format.json { render :show, status: :ok, location: @bank_account }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bank_account.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @bank_account.destroy

    respond_to do |format|
      format.html { redirect_to bank_accounts_url, notice: "Bank account was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    def set_bank_account
      @bank_account = BankAccount.find(params[:id])
    end

    def bank_account_params
      params.require(:bank_account).permit(:user_id)
    end
end
