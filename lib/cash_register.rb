require 'pry'

class CashRegister
  attr_accessor :total, :discount, :shopping_cart, :items, :last_transaction

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(item, price, quantity = 1)
    @total += price * quantity
    quantity.times do
     @items << item
   end
  end

  def apply_discount
    if @discount != 0
      discount_math = @total * (1 - (@discount.to_f/100))
      @total = discount_math.to_i
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

def void_last_transaction
  last_transaction = @items[-1]
  @total[-1]
end


end
