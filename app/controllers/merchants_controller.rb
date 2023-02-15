class MerchantsController < ApplicationController
  def index
    @merchants = MerchantFacade.fetch_all_merchants
  end

  def show
    
  end
end