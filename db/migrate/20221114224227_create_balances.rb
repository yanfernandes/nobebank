class CreateBalances < ActiveRecord::Migration[7.0]
  def change
    create_table :balances do |t|
      t.references :bank_account, null: false, foreign_key: true
      t.references :deposit, null: false, foreign_key: true
      t.references :withdraw, null: false, foreign_key: true

      t.timestamps
    end
  end
end
