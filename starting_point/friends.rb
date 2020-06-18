def get_name(person)
  return person[:name]
end

def favourite_tv_show(person)
  return person[:favourites][:tv_show]
end

def likes_to_eat(person, food)
  return person[:favourites][:snacks].include?(food)
end

def add_friend(person, friend)
  person[:friends] << friend
end

def remove_friend(person, friend)
  person[:friends].delete(friend)
end

def total_money(people)
  total = 0
  for person in people
    total += person[:monies]
  end
  return total
end

def lend_money(lender, lendee, amount)
  lender[:monies] -= amount
  lendee[:monies] += amount
end

def favourite_foods(people)
  foods = []
  for person in people
     foods += person[:favourites][:snacks]
  end
  return foods
end

def people_with_no_friends(people)
  no_friends = []
  for person in people
    if (person[:friends].empty?) 
      no_friends << person
    end
  end
  return no_friends
end