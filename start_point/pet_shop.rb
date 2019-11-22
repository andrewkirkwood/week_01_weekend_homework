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

# return pet by breed to pet shop and return an array
def pets_by_breed(pet_shop, breed)
  array = []
  for pet in pet_shop[:pets]
      array.push(pet) if pet[:breed] == breed
  end
  return array
end
