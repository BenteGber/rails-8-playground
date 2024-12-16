class Quote < ApplicationRecord
  # t.float :amount
  #     t.references :customer, null: false, foreign_key: true
  #     t.timestamps
  belongs_to :customer
end
