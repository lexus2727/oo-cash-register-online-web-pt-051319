class CashRegister
  
  attr_accessor :total, :discount,  :items
  def initialization(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end
  
  def add_items(title, price, quantity = 1)
    @price = price
    quantity.times{@items << title}
    
    
  end
  
  
  
  
end
