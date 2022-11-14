module ApplicationHelper
  def number_of_accounts
    BankAccount.count
  end
end
