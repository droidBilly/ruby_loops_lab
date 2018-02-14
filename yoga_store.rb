@shopping_card  =  []

def find_product_by_reference_number(reference_number)
  @products.each { |product|
    if product[:reference_number] == reference_number
        @shopping_card << product
    end
  }
end

def return_the_total_price
  total_price =  0
  @shopping_card.each { |product|
    total_price = total_price + product[:price]
  }
  puts "The total amount is: #{total_price}€"
end

def print_and_order
  @products.each { |hashproduct|
    puts "Ref#:#{hashproduct[:reference_number]} #{hashproduct[:name]}, it costs #{hashproduct[:price]}€"
  }

  print "Please enter the Ref# of the product you want to buy: "
  ordernumber = gets.to_i

  find_product_by_reference_number(ordernumber)
  
  @shopping_card.each { |product|
    puts "You have ordered #{product[:name]} for the price of: #{product[:price]} €"
  }    
  return_the_total_price
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

puts "Welcome customer, here are our pruducts:"
print_and_order

while true
  print "Do you want to continue(y/n)? "
  answer = gets.chomp.upcase
  if answer == "N"
    puts "Thanks for buying!"
    return_the_total_price
    break
  elsif answer == "Y"
    print_and_order
  else
    puts "You entered an invalid character!"
    return_the_total_price
  end
end
