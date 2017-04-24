#Welcome message
puts "Welcome to Werewolf Inc."

#How many employees (Integer)
puts "How many employees to process?"
number_of_employees = Integer(gets.chomp)

counter = 1

while counter <= number_of_employees do

  #Asks employee their name (String)
  puts ""
  puts "What is the name of employee #" + counter.to_s + "?"
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

  #Allergy loop

  puts "What are your allergies? Enter one allergy per line.  Enter 'done' when finished."
  allergy_answer = gets.chomp
  allergy_finished = false
  sunshine = false

  if allergy_answer == 'done'
    allergy_finished = true
  end

  while allergy_finished == false do
    if allergy_answer == 'sunshine' then
      allergy_finished = true
      sunshine = true
    elsif allergy_answer == 'done'
      allergy_finished = true
    else
      allergy_answer = gets.chomp
    end
  end

  # Correct Age Logic
  current_year = 2017
  if (current_year - employee_birth_year) != employee_age
    employee_age_correct = false
  else
    employee_age_correct = true
  end

  #Vampire Detection Logic
    case
      #Put the name checks first... if it is one of these names, then it doesn't matter what else they answered... Its definitely a vampire!

      when employee_name == ('Drake Cula')
        puts "Result: Definitely a vampire"

      when employee_name == ('Tu Fang')
        puts "Result: Definitely a vampire"

      when sunshine == true
        puts "Result: Probably a vampire"

      when employee_age_correct == true && (employee_garlic_bread_preference == true || employee_health_insurnace == true)
        puts "Result: Probably not a vampire"

      when employee_age_correct == false && employee_garlic_bread_preference == false && employee_health_insurnace == false
        puts "Result: Almost certainly a vampire"

      when employee_age_correct == false && (employee_garlic_bread_preference == false || employee_health_insurnace == false)
        puts "Result: Probably a vampire"

      else
        puts "Results inconclusive."
      end

  #Adds spacing inbetween employees
  puts ""
  puts ""
  counter +=1

end
puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."