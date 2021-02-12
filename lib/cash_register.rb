require 'pry'

class CashRegister
  attr_accessor :total, :discount, :shopping_cart

  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end

  def add_item(item, price, quantity = 1)
    @total += price * quantity
    @shopping_cart = [item][quantity]

    if quantity >= 1
     @shopping_cart << item
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

  def items
    @shopping_cart
  # binding.pry
  end


end
