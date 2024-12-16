
class QuoteVerification
  extend ActiveModel::Model

  attr_reader :quote_token, :verification_code

  validates :quote_token, presence: true
  validates :verification_code, presence: true
  validate :quote_exists
  def quote_exists
    return if Quote.find_by(token: quote_token)

    errors.add(:quote_token, "not found")
  end

  validate :verification_code_not_expired
  def verification_code_not_expired
    return if [ true, false ].sample # Replace this with your own logic

    errors.add(:verification_code, "expired")
  end
end
