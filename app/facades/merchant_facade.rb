class MerchantFacade
  def self.fetch_all_merchants
    json = RailsEngineService.all_merchants
    merchants_array(json)
  end

  def self.merchants_array(json)
    json[:data].map do |data|
      Merchant.new(data)
    end
  end
end