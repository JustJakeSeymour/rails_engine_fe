class MerchantFacade
  def self.fetch_all_merchants
    json = RailsEngineService.all_merchants
    merchants_array(json)
  end

  def self.fetch_a_merchant(id)
    json = RailsEngineService.a_merchant(id)
    merchant(json)
  end

  def self.fetch_a_merchant_items(id)
    json = RailsEngineService.a_merchant_items(id)
    items_array(json)
  end

  def self.merchants_array(json)
    json[:data].map do |data|
      Merchant.new(data)
    end
  end

  def self.merchant(json)
    Merchant.new(json[:data])
  end

  def self.items_array(json)
    json[:data].map do |data|
      Item.new(data)
    end
  end
end