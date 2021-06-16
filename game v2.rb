class String
    def blink;   "\e[5m#{self}\e[25m" end
end

class Menu
   
    def welcome
        eff
        puts " 
                 _____              _____                      _ 
                /  ___|            / ____|                    | |
                | |     __ _ _ __  | (___  _ __   ___  ___  __| |
                | |    / _` | '__|  \\___ \\| '_ \\ / _ \\/ _ \\/ _` |
                | |___| (_| | |     ____) | |_) |  __/  __/ (_| |
                \\______\\__,_|_|    |_____/| .__/ \\___|\\___|\\__,_|
                                          | |                    
                                          |_|   
        "
        puts "                      Appuyez sur Entrée pour commancer".blink
        puts " "
        puts " "
        choix = gets.chomp
            eff
        puts " 
                 _____              _____                      _ 
                /  ___|            / ____|                    | |
                | |     __ _ _ __  | (___  _ __   ___  ___  __| |
                | |    / _` | '__|  \\___ \\| '_ \\ / _ \\/ _ \\/ _` |
                | |___| (_| | |     ____) | |_) |  __/  __/ (_| |
                \\______\\__,_|_|    |_____/| .__/ \\___|\\___|\\__,_|
                                        | |                    
                                        |_|   
        "
        puts " "
        puts "             Tapez: "
        puts "                1: Nouvelle partie"
        puts "                2: Aide"
        puts "                3: Quitter"
        print "               ->"
        choix1 = gets.chomp.to_i

        until choix1 == 1 || choix1 == 2 ||choix1 == 3
            eff
             puts " 
                 _____              _____                      _ 
                /  ___|            / ____|                    | |
                | |     __ _ _ __  | (___  _ __   ___  ___  __| |
                | |    / _` | '__|  \\___ \\| '_ \\ / _ \\/ _ \\/ _` |
                | |___| (_| | |     ____) | |_) |  __/  __/ (_| |
                \\______\\__,_|_|    |_____/| .__/ \\___|\\___|\\__,_|
                                        | |                    
                                        |_|   
        "
            puts "               *!Erreur!*".blink 
            puts "             Tapez: "
            puts "                1: Nouvelle partie"
            puts "                2: Aide"
            puts "                3: Quitter"
            print "               ->"
            choix1 = gets.chomp.to_i
        end

        case choix1
            when 1     
            race

            when 2
            aide

            when 3 
            quitter 
        end

    end

    def aide
        #Clear
            puts "
            -------------------------------------------------------------
            |  1  |  2  |  3  |  4  |  5  |  6  |  7  |  8  |  9  |  10 |
            -------------------------------------------------------------

        1= niveau1         2= niveau2           3= niveau3          4= niveau4
        
        5= niveau5         6= niveau3           7= niveau7          8= niveau8
        
        9= niveau9         10= niveau10

        Instruction 
            -Gagner en arrivont au niveau10. 
            -Appuyez sur une touche l est se lancera automatiquement
            -La suite depand de votre chanche.
            
        Règle de jeu
            -Si vous avez un chiffre entre 1 et 4 vous reculez d'un case
            -Si vous avez eu 5 ou 6 vous  avancez d'un case"
            ch = gets.chomp
            
            if ch
                welcome
            end
    end

    def quitter
        #Clear
        exit
    end

    def eff
        system("clear")
    end
    
    def lancer
        #system ("clear")
        puts "Lancez votre dé en appyant sur une touche"
        touche = gets.chomp
        if touche
            $t = Random.new.rand(1..6)
            puts "Vous avez eu un #{$t}"
        end
    end

    def race
        nombre_de_tours = 0
        e = 1
            until e == 10
                lancer
                    case $t
                       when 1
                            if e>1
                            e-=1
                                puts "Vous avez descendu une marche, vous etes à l'etege #{e}"
                            else
                                puts "Vous ne pouvez plus descendre car vous etes au RDC"
                            end
                            nombre_de_tours+=1
                       when 2
                            e=e+0
                            puts "Vous restez sur place (etage#{e})"
                            nombre_de_tours+=1
                       when 3 
                            e=e+0
                            puts "Vous restez sur place (etage#{e})"
                            nombre_de_tours+=1
                       when 4
                            e=e+0
                            puts "Vous restez sur place (etage#{e})"
                            nombre_de_tours+=1
                      when 5
                            e+=1
                            puts "Vous avez avancer d'une marche, vous etes à l'etage #{e}"
                            nombre_de_tours += 1
                      when 6
                             e+=1
                            puts "Vous avez avancer d'une marche, vous etes à l'etage #{e}"
                            nombre_de_tours += 1
                      
                        #     puts "commande Incorrect, veuillez reessayer"
                    end
                case e
                when 1
                puts"
    -------------------------------------------------------------
    | }=> |     |     |     |     |     |     |     |     |     |
    -------------------------------------------------------------"
                when 2
                puts"
    -------------------------------------------------------------
    |     | }=> |     |     |     |     |     |     |     |     |
    -------------------------------------------------------------"
                when 3
                puts"
    -------------------------------------------------------------
    |     |     | }=> |     |     |     |     |     |     |     |
    -------------------------------------------------------------"
                when 4
                puts"
    -------------------------------------------------------------
    |     |     |     | }=> |     |     |     |     |     |     |
    -------------------------------------------------------------"
                when 5
                puts"
    -------------------------------------------------------------
    |     |     |     |     | }=> |     |     |     |     |     |
    -------------------------------------------------------------"
                when 6
                puts"
    -------------------------------------------------------------
    |     |     |     |     |     | }=> |     |     |     |     |
    -------------------------------------------------------------"
                when 7
                puts"
    -------------------------------------------------------------
    |     |     |     |     |     |     | }=> |     |     |     |
    -------------------------------------------------------------"
                when 8
                puts"
    -------------------------------------------------------------
    |     |     |     |     |     |     |     | }=> |     |     |
    -------------------------------------------------------------"
                when 9
                puts"
    -------------------------------------------------------------
    |     |     |     |     |     |     |     |     | }=> |     |
    -------------------------------------------------------------"
                when 10
                puts"
    -------------------------------------------------------------
    |     |     |     |     |     |     |     |     |     | }=> |
    -------------------------------------------------------------"  
                end
            end
            
        puts " "
        puts " "
            eff
        puts " 
                 _____              _____                      _ 
                /  ___|            / ____|                    | |
                | |     __ _ _ __  | (___  _ __   ___  ___  __| |
                | |    / _` | '__|  \\___ \\| '_ \\ / _ \\/ _ \\/ _` |
                | |___| (_| | |     ____) | |_) |  __/  __/ (_| |
                \\______\\__,_|_|    |_____/| .__/ \\___|\\___|\\__,_|
                                        | |                    
                                        |_|   
        "
        puts " "
        puts "                    Vous avez gagner, partie terminer en #{nombre_de_tours} tours :)".blink
        puts " "
        puts "             Tapez: "
        puts "                1: Nouvelle partie"
        puts "                2: Quitter"
        print "               ->"
        chox = gets.chomp.to_i

        until chox == 1 || chox == 2
            eff
             puts " 
                 _____              _____                      _ 
                /  ___|            / ____|                    | |
                | |     __ _ _ __  | (___  _ __   ___  ___  __| |
                | |    / _` | '__|  \\___ \\| '_ \\ / _ \\/ _ \\/ _` |
                | |___| (_| | |     ____) | |_) |  __/  __/ (_| |
                \\______\\__,_|_|    |_____/| .__/ \\___|\\___|\\__,_|
                                        | |                    
                                        |_|   
        "
            puts "               *!Erreur!*".blink 
            puts "             Tapez: "
            puts "                1: Nouvelle partie"
            puts "                2: Quitter"
            print "               ->"
            chox = gets.chomp.to_i
        end

        case chox
            when 1     
            race

            when 2
            quitter 
        end

    end
    
    
end

menu = Menu.new

menu.welcome