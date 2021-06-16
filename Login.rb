

def sign_in
    puts "Veuillez saisir votre nom"
    print "> "
    nom = gets.chomp
    puts "Veuillez entrée votre mot de passe"
    print "> "
    pwd = gets.chomp
    puts "Bravo! #{nom}, votre mot de passe a été crée :)"
    a=[nom,pwd]
    return a
end

def sign_up(k)
    puts "Veuillez ressaisir votre mot de passe"
    print "> "
    mdp = gets.chomp
    while mdp != k[1]
        puts "Mot de passe erroné"
        puts "Veuillez ressaisir votre mot de passe!"
        print "> "
        mdp = gets.chomp
    end
    puts "Vous êtes connecter #{k[0]}:)"
end

sign_up(sign_in)
        

    
