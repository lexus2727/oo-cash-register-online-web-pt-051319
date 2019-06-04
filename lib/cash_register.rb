class CashRegister
  
  attr_accessor :total, :discount,  :items, :last_transaction
  def initialization(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @last_transaction = 0
  end
  
  def add_items(title, price, quantity = 1)
    @price = price
    quantity.times{@items << title}
    self.last_transaction = price * quantity
    if quantity > 1
      @total += price * quantity
    else
      @total += price
    end
  end
  
  def apply_discount
    if self.discount > 0
      self.total = (self.total - self.total * (self.discount/100.0)).to_i
    
  end
end
  
end
