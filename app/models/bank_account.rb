class BankAccount < ApplicationRecord
  belongs_to :user

  has_many :deposits
  has_many :withdraws
end
