class Deposit < ApplicationRecord
  belongs_to :bank_account

  has_one :user, through: :bank_account
  validate: :amount, presence: true
end
