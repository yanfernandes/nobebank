class Withdraw < ApplicationRecord
  belongs_to :bank_account

  validate: :amount, presence: true
end
