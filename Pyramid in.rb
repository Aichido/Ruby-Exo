def pyramid(a)
    a.times {|n| #par defaut n=1
    print ' ' * (a + n)
    puts '#' * (2 * n - 1)
             }
end
  
puts "Veuillez saisir l'etage de la pyramide"
print "> " 

nbe = Integer(gets.chomp)

pyramid(nbe)