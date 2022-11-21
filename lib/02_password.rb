#!/usr/bin/env ruby

def signup 
    puts "Veuillez saisir un mot de passe : "
    print "> "
    psw = gets.chomp
    puts "Mot de passe enregistré."
    return psw
end 

def login (signup)
    loop do
        puts "Veuillez entrer votre mot de passe : "
        print "> "
        psw_check = gets.chomp
        
        if signup != psw_check
            then
                puts "Accès refusé ! Le mot passe ne correspond pas."
            else
                welcome_screen
                break
        end
    end
end

def welcome_screen
    puts "Accès autorisé !"
    puts "Bienvenue dans votre espace personnel."
end

def perform
    psw = signup
    login (psw)
end

perform