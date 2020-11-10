class PaymentsController < ApplicationController
  
  def index
    @payment = Payment.new
  end

  def new
    @payment = Payment.new
  end

  def show
    @payment = Payment.find(params[:id])
  end

  def create 
    if payment_params["card_number"].length == 16
      @payment = Payment.new(payment_params)
      @payment.save
      redirect_to payment_thank_you_url([:payment_id])
    else
      flash[:notice] = "Incorrect card details."
      redirect_to payments_url
    end
  end

  private
  def payment_params
    params.require(:payment).permit(:card_number)
  end
  
end
