def over_18?(age)
  if age < 18
    puts "You cannot do anything fun"
  else
    puts "Congratuations! You can drink and smoke!"
    over_21?(age)
  end
end
def over_21?(age)
  if age >= 21
    puts "Awesome! You can drink!"
    over_25?(age)
  end
end
def over_25?(age)
  if age >= 25
    puts "Sweet! Go rent you a car!"
  end
end

puts "What is your age?"
user_age = gets.chomp.to_i

def check_age(age)
  over_18?(age)
end

check_age(user_age)
