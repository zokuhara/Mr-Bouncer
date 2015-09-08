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

def check_age(age)
  over_18?(age)
end

user_input = nil

while user_input != 'quit'
  puts "What is your age?"
  user_input = gets.chomp
  if user_input != "quit"
    check_age(user_input.to_i)
  end
end
