require "pry"
class CashRegister

    attr_accessor :total, :discount, :cart, :last_transaction, :cart
    
    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @cart = []
    end 
     
    def add_item(title, price, quantity = 1)
      @cart << title
      @total += (price * quantity)   
    end 
    
    def apply_discount
      if self.discount == 0 
        "There is no discount to apply."
      else 
        @total = self.total * (1-(self.discount/100.0))
        "After the discount, the total comes to $#{@total.to_i}."
      end 
    end 
    
    def item 
      
    end 
end 
