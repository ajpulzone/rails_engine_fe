class ItemFacade

  def self.all_items
    data = ItemService.find_all_items[:data]
    data.map { |item| Item.new(item) }
  end

  def self.find_item(id)
    data = ItemService.find_an_item(id)[:data]
    Item.new(data)
  end
end