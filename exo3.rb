#!/usr/bin/env ruby

<<-DOC

Voici quelques exemples de la pyramide :
J'ai volontairement représenté les espaces par des underscores (_) afin de pouvoir les compter.

- Si l'utilisateur entre 1 :
#

- Si l'utilisateur entre 2 :
_#_
###

- Si l'utilisateur entre 3 :
__#__
_###_
#####

- Si l'utilisateur entre 4 :
___#___
__###__
_#####_
#######

Constat :
Les espaces latéraux sont égales à 4 - 1 et à chaque niveau ce nombre est décrémenté de 1.
Le nombre de hashtag quand à lui est tout d'abord égale à 1 puis augmente de +2 à chaque niveau.

DOC

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