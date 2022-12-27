class MerchantService

  def self.conn
    Faraday.new(url: "http://localhost:3000/api/v1/")
  end

  def self.find_all_merchants
    response = conn.get("merchants")
    parse_json(response)
  end

  def self.find_a_merchant(id)
    response = conn.get("merchants/#{id}")
    parse_json(response)
  end

  def self.find_merchant_items(id)
    response = conn.get("merchants/#{id}/items")
    parse_json(response)
  end

  def self.parse_json(response)
    response_results = JSON.parse(response.body, symbolize_names: true)
  end

  private_class_method :conn
end