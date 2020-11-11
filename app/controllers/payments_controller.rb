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
    @payment = Payment.new(payment_params)

    if payment_params["card_number"].empty?
      flash[:notice] = "Field cannot be blank"
      redirect_to payments_url

    elsif payment_params["card_number"].length == 16 && payment_params["card_number"].scan(/^\d+$/).any?
      @payment.save
      redirect_to payment_thank_you_url([:payment_id])

    elsif payment_params["card_number"].scan(/^\d+$/).any? == false
      flash[:notice] = "Only numbers accepted"
      redirect_to payments_url

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
