class Merchant
  attr_reader :merch_id, :name
  
  def initialize(data)
    @merch_id = data[:id].to_i
    @name = data[:attributes][:name]
  end

end