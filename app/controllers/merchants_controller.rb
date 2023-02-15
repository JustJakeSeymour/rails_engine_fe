class MerchantsController < ApplicationController
  def index
    @merchants = MerchantFacade.fetch_all_merchants
  end

  def show
    @merchant = MerchantFacade.fetch_a_merchant(params[:id])
    @merchant_items = MerchantFacade.fetch_a_merchant_items(params[:id])
  end
end