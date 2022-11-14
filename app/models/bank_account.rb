class BankAccount < ApplicationRecord
  belongs_to :user

  before_validation :load_defaults

  def load_defaults
    if self.new_record?
      self.balance = 0.00
    end
  end
end
