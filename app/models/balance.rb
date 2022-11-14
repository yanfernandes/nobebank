class Balance < ApplicationRecord
  belongs_to :bank_account
  belongs_to :deposit, optional: true
  belongs_to :withdraw, optional: true
end
