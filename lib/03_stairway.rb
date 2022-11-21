#!/usr/bin/env ruby

def play

    dice = 0
    player_position = 0
    nb_turns = 0

    while player_position <10
        dice = rand(1..6)
        puts "Jet de dé : #{dice}"

        case dice
            when 1
                if player_position != 0
                    then 
                        player_position -=1
                        puts "Descend d'une marche, vous vous trouvez à la case #{player_position}"
                    else puts "Descend d'une marche, vous ne pouvez pas descendre plus bas que la case #{player_position}" 
                end
            when 5, 6
                player_position +=1
                puts "Avance d'une marche, vous vous trouvez à la case #{player_position}"
            when 2, 3, 4
                puts "Rien ne se passe, vous vous trouvez à la case #{player_position}"
            else
                puts "Erreur dans le jeu."
        end
        nb_turns += 1
    end

    return nb_turns
end

def average_finish_time
    games_turns = []
    100.times {games_turns.push(play)}
    return games_turns.inject{ |sum, el| sum + el }.to_f / games_turns.size
end

def perform
    puts "Sur 100 parties la moyenne de tours pour arriver à la fin est de #{average_finish_time}"
end

perform