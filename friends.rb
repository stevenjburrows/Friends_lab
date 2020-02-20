def get_name(person)
  return person[:name]
end

def favourite_tv_show(person)
  return person[:favourites][:tv_show]
end

def likes_to_eat(person)
 return person[:favourites][:snacks].select { |snack| snack == "bread" }.any?
end

def likes_to_eat_2(person)
 return person[:favourites][:snacks].select { |snack| snack == "spinich" }.any?
end

def add_friend(person,name)
  person[:friends].push(name)
  return true
end

def check_friend_length(person)
  length = person[:friends].length()
  return length
end

def remove_friend(person,name)
  person[:friends].delete(name)
  return true
end

def check_money_sum(people)
  total_money = people.reduce(0){ |money, people| money + people[:monies]}
  return total_money
end

def lending(person1, person2, amount)
  result1 = person1[:monies] - amount
  result2 = person2[:monies] + amount
end
