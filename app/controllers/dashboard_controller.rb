class DashboardController < ApplicationController
  # before_action :authenticate_user!

  def index
    @account = Account.find_by(params[:id])
    @company = Company.all
  end

  def trash
    @accounts = Account.all
    @account = Account.find_by(params[:user_id])
    @company = Company.all
    @accountholding = AccountHolding.all
  end
end
