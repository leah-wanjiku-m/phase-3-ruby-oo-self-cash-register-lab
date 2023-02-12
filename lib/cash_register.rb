 class CashRegister
   attr_accessor:total, :discount, :previous_transaction, :items
    def initialize (discount=0)
        @total=0
        @discount=discount
        @items = []

    end
    def add_item(title,price, quantity=1)
      self.previous_transaction = price * quantity
      self.total += self.previous_transaction
      @items += [title]*quantity
    end
    def apply_discount
      if self.discount != 0
        self.total = @total -(@total *self.discount/100)
         return "After the discount, the total comes to $#{self.total}."
      else 
        "There is no discount to apply."
      end
    end
    def void_last_transaction
        self.total -= self.previous_transaction
    end
 end
