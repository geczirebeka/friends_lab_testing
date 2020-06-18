# 1
def get_name(person)
  return person[:name]
end

# 2
def favourite_tv_show(person)
  return person[:favourites][:tv_show]
end

# 3
def likes_to_eat(person, food)
  return person[:favourites][:snacks].include?(food)
end

# 4
def add_friend(person, friend)
  person[:friends] << friend
end

# 5
def remove_friend(person, friend)
  person[:friends].delete(friend)
end

# 6
def total_money(people)
  total = 0
  for person in people
    total += person[:monies]
  end
  return total
end

# 7
def lend_money(lender, lendee, amount)
  lender[:monies] -= amount
  lendee[:monies] += amount
end

# 8
def favourite_foods(people)
  foods = []
  for person in people
     foods += person[:favourites][:snacks]
  end
  return foods
end

# 9
def people_with_no_friends(people)
  no_friends = []
  for person in people
    if (person[:friends].empty?) 
      no_friends << person
    end
  end
  return no_friends
end