json.extract! withdraw, :id, :bank_account_id, :amount, :created_at, :updated_at
json.url withdraw_url(withdraw, format: :json)
