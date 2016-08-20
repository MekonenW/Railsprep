class BorrowersController < ApplicationController
  def index
  end

  def create
  	borrow= Borrower.new(borrower_params)
  	if borrow.save && borrow.authenticate(params[:password])
  		session[:user_id]= borrower.user_id 
      redirect_to "/lenders"
  	else
  		flash[:error]= borrow.errors.full_messages
  		redirect_to '/'
  	end
  end

  def show
    @lender= Lender.find(params[:id])
    @borrower= Borrower.find(params[:id])
  end


  def update
    borrow= Borrower.find(params[:id])
    lender= Lender.find(params[:id])
    amount= params[:raised]
  end

  private 
  	def borrower_params
  		params.require(:borrower).permit(:first_name, :last_name, :email, :password, :purpose, :description, :money, :raise)
  	end
end
