class AccountNumbersController < ApplicationController 
  def new
    @account_number = AccountNumberForm.new
  end

  def create
    @account_number = AccountNumberForm.new account_number_params
    if @account_number.valid?
      redirect_to root_url, notice: "#{@account_number.number} - is correct"
    else
      render :new
    end
  end


  private 

    def account_number_params
      params.require(:account_number_form).permit(:number)
    end
end