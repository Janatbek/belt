class LendersController < ApplicationController
  def index
  	@lenders = Lender.all
  end

  def lend
  	render :text =>'in lend method'
  end
end
