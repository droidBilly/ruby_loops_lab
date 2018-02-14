shopping_card  =  []

def find_product_by_reference_number(reference_number)
  @products.each { |product|
    if product[:reference_number] == reference_number
        product 
    end
  }
end

@products = [
  { reference_number: 1231, name: "Super Lite Mat", price: 10 },
  { reference_number: 1232, name: "Power Mat", price: 20 },
  { reference_number: 1233, name: "Block", price: 30 },
  { reference_number: 1234, name: "Meditation cushion", price: 30 },
  { reference_number: 1235, name: "The best T-shirt", price: 200 },
  { reference_number: 1236, name: "The cutest yoga pants", price: 300 },
  { reference_number: 1237, name: "Bring Yoga To Life", price: 30 },
  { reference_number: 1238, name: "Light On Yoga", price: 10 }
]

puts "Hello customer. Here are our pruducts:"
@products.each { |hashproduct|
  puts "#{hashproduct[:reference_number]}) #{hashproduct[:name]}, it costs #{hashproduct[:price]}€"
}

puts "please enter the number of the product you want to buy: "
ordernumber = gets.to_i

shopping_card= find_product_by_reference_number(ordernumber)

puts "You have ordered #{shopping_card[0][:name]} for the price of: #{shopping_card[0][:price]} €"

