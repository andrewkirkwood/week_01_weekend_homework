def pet_shop_name(pet_shop)
  return pet_shop[:name]
end

def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
end

def add_or_remove_cash(pet_shop, money_to_be_added)
  pet_shop[:admin][:total_cash] += money_to_be_added
end

def pets_sold(pet_shop)
  return pet_shop[:admin][:pets_sold]
end

def increase_pets_sold(pet_shop, pet_qty_sold_now)
  return pet_shop[:admin][:pets_sold] += pet_qty_sold_now
end

def stock_count(pet_shop)
  stock_total = 0
  for pets in pet_shop
    return stock_total += pet_shop[:pets].count
  end
end


def pets_by_breed(pet_shop, breed)
  array = []
  for pet in pet_shop[:pets]
    array.push(pet) if pet[:breed] == breed
  end
  return array
end


def find_pet_by_name(pet_shop, name)
  for pet in pet_shop[:pets]
    if pet[:name] == name
      return pet
    end
  end
  return nil
end

def remove_pet_by_name(pet_shop, name)
  for pet in pet_shop[:pets]
    if pet[:name] == name
      pet_shop[:pets].delete(pet)
    end
  end
end

def add_pet_to_stock(pet_shop, name)
  pet_shop[:pets].push(name)
end

def customer_cash(customer)
  return customer[:cash]
end

def remove_customer_cash(customer, amount)
  return customer[:cash] -= amount
end

def customer_pet_count(customer)
  return customer[:pets].length
end

def add_pet_to_customer(customer, new_pet)
 return customer[:pets].push(new_pet)
end

def customer_can_afford_pet(customer, new_pet)
  if customer[:cash] >= new_pet[:price]
    return true
  else
    return false
  end
end

def sell_pet_to_customer(pet_shop, pet, customer)
    customer[:pets] == customer[:pets].push(1)
    pet_shop[:admin][:pets_sold] += 1
    customer[:cash] -= pet[:price]     pet_shop[:admin][:total_cash] += pet[:price]

end


# def customer_pet_count(customer)
#   return customer[:pets].length
# end
