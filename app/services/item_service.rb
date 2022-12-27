class ItemService

  def self.conn
    Faraday.new(url: "http://localhost:3000/api/v1/")
  end

  def self.find_all_items
    response = conn.get("items")
    parse_json(response)
  end

  def self.find_an_item(id)
    response = conn.get("items/#{id}")
    parse_json(response)
  end

  def self.parse_json(response)
    response_results = JSON.parse(response.body, symbolize_names: true)
  end

  private_class_method :conn
end