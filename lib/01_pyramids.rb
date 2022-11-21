#!/usr/bin/env ruby

def half_pyramid
    puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
    print "> "
    nb_iteration = gets.chomp.to_i
    nb_space = 0 # Nombre d'espace avant les hashtags
    nb_hashtag = 0
    hastags = ""
    
    for i in 1..nb_iteration
        nb_space = (nb_iteration-i)
        nb_hashtag = i
        nb_space.times { hastags += " "}
        nb_hashtag.times { hastags += "#"}
        puts hastags
        hastags = ""
    end
end 

def full_pyramid
    puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
    print "> "
    nb_iteration = gets.chomp.to_i
    nb_hashtag = 1 # Hashtag commence à 1
    nb_cases_lateral = 0 # Nombre d'espace latéral au hashtag
    hastags = ""

    puts "Voici la pyramide :"

    for i in 1..nb_iteration
        if nb_iteration>1
            then 
                nb_cases_lateral = nb_iteration - i # Le nombre d'espace latéral est égale au nombre d'itération - 1
                nb_cases_lateral.times {hastags += " "} # Ajout des espaces gauche
                nb_hashtag.times {hastags += "#"} # Ajout des hashtags
                nb_cases_lateral.times {hastags += " "} # Ajout des espaces droit
                puts hastags
                nb_hashtag += 2 # A chaque étage on ajoute 2 hashtag
                hastags = "" # Réinitialisation de hashtag
            else puts "#"
        end
    end
end

def wtf_pyramid
    puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ? (choisis un nombre impair)"
    print "> "
    nb_iteration = gets.chomp.to_i
    center = nb_iteration/2+1
    nb_cases_lateral = nb_iteration/2
    nb_hashtag = 1
    hastags = ""

    if(nb_iteration%2 == 0)
        then puts "Vous avez saisie un chiffre pair"
        else
            puts "Voici la pyramide :"
            for i in 1..nb_iteration
                if nb_iteration>1
                    then
                        if(i<center)
                            then
                                nb_cases_lateral.times {hastags += " "} 
                                nb_hashtag.times {hastags += "#"} 
                                nb_cases_lateral.times {hastags += " "}
                                nb_cases_lateral -= 1 
                                nb_hashtag += 2 
                            else
                                nb_cases_lateral.times {hastags += " "} 
                                nb_hashtag.times {hastags += "#"}
                                nb_cases_lateral.times {hastags += " "}
                                nb_cases_lateral += 1
                                nb_hashtag -= 2 
                        end
                        puts hastags
                        hastags = "" 
                    else puts "#"
                end
            end
    end
end

def perform
    puts "Choisissez l'un des programmes suivants, entrez un chiffre : "
    puts "1 - half_pyramid"
    puts "2 - full_pyramid"
    puts "3 - wtf_pyramid"
    print "> "
    choice = gets.chomp.to_i
    case choice
        when 1
            half_pyramid
        when 2
            full_pyramid
        when 3
            wtf_pyramid
    end
end

perform