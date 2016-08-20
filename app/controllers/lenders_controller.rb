class LendersController < ApplicationController
  def index
  end

  def new
  end
  def create
    lender= Lender.new(lender_params)
    if lender.save
      session[:user_id]= lender.id 
      redirect_to "/lenders"
    else
      flash[:errors]= lender.errors.full_messages
      redirect_to '/'
    end
  end

  def show
    @lender= Lender.find(params[:id])
    @borrower= Borrower.find(params[:id])

  end

  def update
  end

  def destroy
  end

  private 
    def lender_params
      params.require(:lender).permit(:first_name, :last_name, :location, :email, :password, :money)
    end
end
