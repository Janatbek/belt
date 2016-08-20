class SessionsController < ApplicationController
  def new

  end

  def register_lender
  	render :text => 'in register_lender page'
  end

  def register_borrower
  	render :text => 'in register_borrower page'
  end

  def login
  	
  end

  def logout
    session[:user_id] = nil
  	redirect_to '/online_landing/register', :notice => "Logged out!"
  end

end
