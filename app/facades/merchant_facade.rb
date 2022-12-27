class MerchantFacade

  def self.all_merchants
    data = MerchantService.find_all_merchants[:data]
    data.map { |merchant| Merchant.new(merchant) }
  end

  def self.find_merchant(id)
    data = MerchantService.find_a_merchant(id)[:data]
    Merchant.new(data)
  end

  def self.merchant_items(id)
    data = MerchantService.find_merchant_items(id)[:data]
    data.map { |item| Item.new(item) }
  end
end