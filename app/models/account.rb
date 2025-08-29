class Account < ApplicationRecord

  belongs_to :supplier
  has_one :account_history, through: :account

end