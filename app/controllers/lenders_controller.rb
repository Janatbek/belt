class LendersController < ApplicationController


before_action :require_login, except: [:new, :create]
before_action :require_correct_user, only: [:index]

  def index
  	@lender = Lender.find(params[:id])
  end

  def lend
  	render :text =>'in lend method'
  end
end
