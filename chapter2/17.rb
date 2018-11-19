class Pizza
  def initialize (toppings)
    toppings.each do |topping|
      add_and_price_topping(topping)
    end
  end
end