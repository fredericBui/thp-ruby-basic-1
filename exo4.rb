#!/usr/bin/env ruby

<<-DOC

- Si l'utilisateur entre 1 :

#

- Si l'utilisateur entre 3 :

_#_
###
_#_

- Si l'utilisateur entre 5 :

__#__
_###_
#####
_###_
__#__


- Si l'utilisateur entre 7 :

___#___
__###__
_#####_
#######
_#####_
__###__
___#___

Constat le nombre d'espace correspond à l'entrée de l'utilisateur divisé par 2.
Il y a une inversion des opérations dès qu'on arrive au milieu.

DOC

puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ? (choisis un nombre impair)"
print "> "
nb_iteration = gets.chomp.to_i
center = nb_iteration/2+1
nb_cases_lateral = nb_iteration/2
nb_hashtag = 1
hastags = ""

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
