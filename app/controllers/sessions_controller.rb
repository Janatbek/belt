class SessionsController < ApplicationController
  def new

  end

  def register_lender
    @lender = Lender.new(lender_params)
    if @lender.save
        redirect_to '/lenders/index'

    else
      render :text => 'failed'
    end 
    # redirect_to '/lenders/index'
  end

  def register_borrower
  	render :text => 'in register_borrower page'
  end

  def check_user
    @user = Lender.find_by(email: params[:email])
    if @user
      redirect_to '/lenders/index'
    else
      @user = Borrower.find_by(email: params[:email])
      if @user
        render :text => "I need money bro"
      end
    end
  end

  def login
  	
  end

  def logout
    session[:user_id] = nil
  	redirect_to '/online_landing/register', :notice => "Logged out!"
  end

  private

  def lender_params
    params.require(:lender).permit(:first_name, :last_name,:email,:password,:money)
  end

end
