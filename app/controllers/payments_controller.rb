class PaymentsController < ApplicationController
  
  def index
    @payment = Payment.new
  end

  def new
    @payment = Payment.new
  end

  def create 
    @payment = Payment.new(payment_params)
    if @payment.save
      # byebug
      redirect_to payment_thank_you_url([:payment_id])
    end
  end

  private
  def payment_params
    params.require(:payment).permit(:card_number)
  end
  
end
