class Item
  attr_reader :item_id, :name, :description, :unit_price, :merch_id

  def initialize(data)
    @item_id = data[:id].to_i
    @name = data[:attributes][:name]
    @description = data[:attributes][:description]
    @unit_price = data[:attributes][:unit_price]
    @merch_id = data[:attributes][:merchant_id]
  end

end