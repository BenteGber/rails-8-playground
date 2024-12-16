
class Api::V1::QuoteVerificationsController < ApplicationController
  before_action :set_quote_verification, only: %i[ create ]

  def create
    if @quote_verification.valid?
      render json: { success: true } # or send back a token, or whatever you need
    else
      render json: @quote_verification.errors, status: :unprocessable_entity # or map errors to a more user-friendly format
    end
  end

  private
    def set_quote_verification
      @quote_verification = QuoteVerification.new(quote_params)
    end

    # Only allow a list of trusted parameters through.
    def quote_params
      params.expect([ :quote_token, :verification_code ])
    end
end
