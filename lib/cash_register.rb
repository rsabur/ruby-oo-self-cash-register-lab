require 'pry'

class CashRegister

    attr_accessor :total, :discount, :items, :last_price

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
        @last_price = 0
    end

    def add_item(item, price, quantity=1)
        # binding.pry
        @total += price * quantity
        quantity.times do
            @items << item
        end
        @last_price = price * quantity
    end

    def apply_discount
        if discount > 0
          @total = @total - @total * @discount/100
                "After the discount, the total comes to $#{total}."
        elsif @discount == 0
            # binding.pry
            "There is no discount to apply."
        end
    end
    
    def void_last_transaction
        @total = @total - @last_price
    end

end
