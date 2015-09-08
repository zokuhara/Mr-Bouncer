drinking_age ||= 21

def can_smoke_vote(age)
  if age < 18
    puts "You cannot do anything fun"
  else
    puts "Congratuations! You can smke and vote!"
    can_drink(age)
  end
end
def can_drink(age)
  if age >= drinking_age
    puts "Awesome! You can drink!"
    can_rent(age)
  end
end
def can_rent(age)
  if age >= 25
    puts "Sweet! Go rent you a car!"
  end
end

def check_age(age)
  can_smoke_vote?(age)
end


user_input = []
user_input << user_age ||= 0
user_input << user_country ||= nil
user_input << user_parents ||= "no"
until user_input.include? "quit" do
  puts "What is your age?"
  user_age = gets.chomp.to_i
  puts "Are you from the US or the UK?"
  user_country = gets.chomp.downcase
  if user_country == "us"
    drinking_age = 21
    can_smoke_vote(user_age)
  elsif user_country == "uk"
    drinking_age = 18
    if [16, 17].include? user_age
      puts "Are your parents with you?"
      user_parents = gets.chomp.downcase
      if user_parents == "yes"
        drinking_age = 16
        can_smoke_vote(user_age)
      else
        drinking_age = 18
        can_smoke_vote(user_age)
      end
    can_smoke_vote(user_age)
    end
  else
    puts "I don't know that country's laws"
  end
end
