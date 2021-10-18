class AccountUser < ApplicationRecord
  belongs_to :users
  belongs_to :accounts
end
