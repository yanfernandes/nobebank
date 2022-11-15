class HomeController < ApplicationController
  def index
    @balance = current_user.bank_account.get_balance
  end
end