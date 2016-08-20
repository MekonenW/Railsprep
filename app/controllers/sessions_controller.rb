class SessionsController < ApplicationController
	def new
	end

	def create 
	lender= Lender.find_by(email: params[:email])
	borrower= Borrower.find_by(email: params[:email])

	if borrower && borrower.authenticate(params[:password])
		session[:user_id]= borrower.id
        redirect_to "/lenders/#{session[:user_id]}"

	elsif lender && lender.authenticate(params[:password])
		session[:user_id]= lender.id 
        redirect_to "/borrowers/#{session[:user_id]}"
	else
		flash[:err]= "Invalid Email or password"
		redirect_to '/sessions'
	end
	end 
	def destroy
	session[:user_id]= nil
	redirect_to '/'
	end
end
