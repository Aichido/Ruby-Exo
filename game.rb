
class String
    #def blink;   "\e[5m#{self}\e[25m" end
    def black;          "\e[30m#{self}\e[0m" end
	def red;            "\e[31m#{self}\e[0m" end
	def green;          "\e[32m#{self}\e[0m" end
	def brown;          "\e[33m#{self}\e[0m" end
	def blue;           "\e[34m#{self}\e[0m" end
	def magenta;        "\e[35m#{self}\e[0m" end
	def cyan;           "\e[36m#{self}\e[0m" end
	def gray;           "\e[37m#{self}\e[0m" end

	def bg_black;       "\e[40m#{self}\e[0m" end
	def bg_red;         "\e[41m#{self}\e[0m" end
	def bg_green;       "\e[42m#{self}\e[0m" end
	def bg_brown;       "\e[43m#{self}\e[0m" end
	def bg_blue;        "\e[44m#{self}\e[0m" end
	def bg_magenta;     "\e[45m#{self}\e[0m" end
	def bg_cyan;        "\e[46m#{self}\e[0m" end
	def bg_gray;        "\e[47m#{self}\e[0m" end

	def bold;           "\e[1m#{self}\e[22m" end
	def italic;         "\e[3m#{self}\e[23m" end
	def underline;      "\e[4m#{self}\e[24m" end
	def blink;          "\e[5m#{self}\e[25m" end
	def reverse_color;  "\e[7m#{self}\e[27m" end
end
#puts "Appuyez sur entrée".blink

class Menu 
        
    def welcom
        eff
        sec = 0.3
    puts  " ___________________________________________________________________";sleep sec
    puts "|                                                                   |";sleep sec
    puts "|                                                                   |";sleep sec
    puts "|             __  __                  _                             |";sleep sec
    puts "|            |  \\/  |                (_)                            |";sleep sec
    puts "|            | \\  / | ___  _ __ _ __  _  ___  _ __                  |";sleep sec
    puts "|            | |\\/| |/ _ \\| '__| '_ \\| |/ _ \\| '_ \\                 |";sleep sec
    puts "|            | |  | | (_) | |  | |_) | | (_) | | | |                |";sleep sec
    puts "|            |_|  |_|\\___/|_|  | .__/|_|\\___/|_| |_|                |";sleep sec
    puts "|                              | |                                  |";sleep sec
    puts "|                              |_|                                  |";sleep sec
    puts "|                                                                   |";sleep sec
    puts "|                                                                   |";sleep sec
    puts "|___________________________________________________________________|";sleep sec

        puts " "
        puts " "
        puts "                  Appuyez sur Entrée pour commencer".blink
        puts " "
        puts " "
        #print "->"
        choix = gets.chomp
        
   eff
=begin
    puts"
                     __  __                  _             
                    |  \\/  |                (_)            
                    | \\  / | ___  _ __ _ __  _  ___  _ __    
                    | |\\/| |/ _ \\| '__| '_ \\| |/ _ \\| '_ \\               
                    | |  | | (_) | |  | |_) | | (_) | | | |              
                    |_|  |_|\\___/|_|  | .__/|_|\\___/|_| |_|              
                                      | |                  
                                      |_|                  
                                                                             "
=end
    puts  " ___________________________________________________________________"
    puts "|                                                                   |"
    puts "|                                                                   |"
    puts "|             __  __                  _                             |"
    puts "|            |  \\/  |                (_)                            |"
    puts "|            | \\  / | ___  _ __ _ __  _  ___  _ __                  |"
    puts "|            | |\\/| |/ _ \\| '__| '_ \\| |/ _ \\| '_ \\                 |"
    puts "|            | |  | | (_) | |  | |_) | | (_) | | | |                |"
    puts "|            |_|  |_|\\___/|_|  | .__/|_|\\___/|_| |_|                |"
    puts "|                              | |                                  |"
    puts "|                              |_|                                  |"
    puts "|                                                                   |"
    puts "|                                                                   |"
    puts "|___________________________________________________________________|"
        puts " "
        puts " "
        puts "          Tapez: "
        puts "             1: Nouvelle partie"
        puts "             2: Aide"
        puts "             3: Quitter"
        print "            ->"
        choix1 = gets.chomp.to_i

    eff
        until choix1 == 1 || choix1 == 2 ||choix1 == 3
    system ("clear")
    puts  " ___________________________________________________________________"
    puts "|                                                                   |"
    puts "|                                                                   |"
    puts "|             __  __                  _                             |"
    puts "|            |  \\/  |                (_)                            |"
    puts "|            | \\  / | ___  _ __ _ __  _  ___  _ __                  |"
    puts "|            | |\\/| |/ _ \\| '__| '_ \\| |/ _ \\| '_ \\                 |"
    puts "|            | |  | | (_) | |  | |_) | | (_) | | | |                |"
    puts "|            |_|  |_|\\___/|_|  | .__/|_|\\___/|_| |_|                |"
    puts "|                              | |                                  |"
    puts "|                              |_|                                  |"
    puts "|                                                                   |"
    puts "|                                                                   |"
    puts "|___________________________________________________________________|"
        puts " "
            puts "              --!Erreur!--".blink
            puts "          Tapez: "
            puts "             1: Nouvelle partie"
            puts "             2: Aide"
            puts "             3: Quitter"
            print "            ->"
            choix1 = gets.chomp.to_i
        end

        case choix1
            when 1     
        

            when 2
            aide

            when 3 
            quitter 
        end
    end

    def aide
        puts "
    Instruction 
        -Remplir les cases avec X et O
            
    Règle de jeu
        -Si vous avez reussiser a aligner 3 X ou 3 O, vous gagner tous de suite
        -Si vous avez eu 5 ou 6 vous  avancez d'un cases"

            ch = gets.chomp
            if ch
                welcom
            end

    end

    def eff
        system("clear")
    end

    def quitter
        #Clear
        exit
    end
end

menu = Menu.new

menu.welcom
