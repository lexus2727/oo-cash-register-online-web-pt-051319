class CashRegister
  
  attr_accessor :total, :discount,  :items, :last_transaction
  def initialization(discount = 0)
    @total = 0
    @discount = discount
    @items = []
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
  
  
  
  
end
