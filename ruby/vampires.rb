#Welcome message
puts "Welcome to Werewolf Inc."

#Asks employee their name (String)
puts "What is your name?"
employee_name = gets.chomp

#Asks employee their age and what year they were born (Integers)
puts "How old are you?"
employee_age = Integer(gets.chomp)

puts "What year were you born?"
employee_birth_year = Integer(gets.chomp)

#Asks employee if they would like garlic bread (Boolean)
puts "Our company cafeteria serves garlic bread. Should we order some for you?(y/n)"

employee_garlic_bread_preference =  gets.chomp

  if employee_garlic_bread_preference == "y"
    employee_garlic_bread_preference = true
  elsif employee_garlic_bread_preference == "n"
    employee_garlic_bread_preference = false
  end

#Asks employee if they would like health insurance (Boolean)
puts "Would you like to enroll in the company’s health insurance? (y/n)"
employee_health_insurnace = gets.chomp

  if employee_health_insurnace == "y"
    employee_health_insurnace = true
  elsif employee_health_insurnace == "n"
    employee_health_insurnace = false
  end

# Correct Age Logic
current_year = 2017
if (current_year - employee_birth_year) != employee_age
  employee_age_correct = false
else
  employee_age_correct = true
end



  case
    when employee_age_correct == true && (employee_garlic_bread_preference == true || employee_health_insurnace == true)
      puts "Probably not a vampire"

    when employee_age_correct == false && employee_garlic_bread_preference == false && employee_health_insurnace == false
      puts "Almost certainly a vampire"

    when employee_age_correct == false && (employee_garlic_bread_preference == false || employee_health_insurnace == false)
      puts "Probably a vampire"

    when employee_name = ("Drake Cula" || "Tu Fang")
      puts "Definitely a vampire"
    else
      puts "Results inconclusive."
    end


