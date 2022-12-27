class MerchantsController < ApplicationController

  def index
    @merchants =  MerchantFacade.all_merchants
  end
  
  def show
    @merchant = MerchantFacade.find_merchant(params[:merchant_id])
    @items = MerchantFacade.merchant_items(params[:merchant_id])
  end
end