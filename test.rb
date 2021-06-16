def ask_first_name
  puts "Quel est ton prenom ?"
  print "> "
  first_name = gets.chomp
  return first_name
end

def ask_last_name
  puts "Quel est ton nom de famille ?"
  print "> "
  last_name = gets.chomp
  return last_name
end

def greet(first_name, last_name)
	puts "Bienvenue, #{first_name} #{last_name} !"
end

